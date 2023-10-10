// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FileAccessControl {
    // Define the AccessLevel enum
    enum AccessLevel {
        None,
        Read,
        Write,
        Admin
    }

    // Define the File struct
    struct File {
        uint256 fileId;
        string name;
        AccessLevel accessLevelRequired;
    }

    // Array to store File structs
    File[] public files;

    // Function to add a new file to the files array
    function addFile(string memory _name, AccessLevel _accessLevel) public {
        File memory newFile = File({
            fileId: files.length,
            name: _name,
            accessLevelRequired: _accessLevel
        });
        files.push(newFile);
    }

    // Function to get files based on the provided AccessLevel
    function getFilesByAccessLevel(AccessLevel _accessLevel)
        public
        view
        returns (string[] memory)
    {
        uint256 count = 0;
        // First, count the number of files with the given access level
        for (uint256 i = 0; i < files.length; i++) {
            if (files[i].accessLevelRequired == _accessLevel) {
                count++;
            }
        }

        string[] memory returnedFiles = new string[](count);
        count = 0; // Reset count for the next loop

        for (uint256 i = 0; i < files.length; i++) {
            if (files[i].accessLevelRequired == _accessLevel) {
                returnedFiles[count] = files[i].name;
                count++;
            }
        }
        return returnedFiles;
    }
}
