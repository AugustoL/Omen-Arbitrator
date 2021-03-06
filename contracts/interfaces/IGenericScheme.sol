pragma solidity >=0.6.2;


interface IGenericScheme {
    /**
     * @dev propose to call on behalf of the _avatar
     *      The function trigger NewCallProposal event
     * @param _callData - The abi encode data for the call
     * @param _value value(ETH) to transfer with the call
     * @param _descriptionHash proposal description hash
     * @return an id which represents the proposal
     */
    function proposeCall(
        bytes calldata _callData,
        uint256 _value,
        string calldata _descriptionHash
    ) external returns (bytes32);

    function proposalCount() external returns (uint256);
}
