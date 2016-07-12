package com.fasterxml.jackson.core;

import java.io.IOException;

public abstract class TreeCodec {
    public abstract TreeNode createArrayNode();

    public abstract TreeNode createObjectNode();

    public abstract <T extends TreeNode> T readTree(JsonParser jsonParser) throws IOException, JsonProcessingException;

    public abstract JsonParser treeAsTokens(TreeNode treeNode);

    public abstract void writeTree(JsonGenerator jsonGenerator, TreeNode treeNode) throws IOException, JsonProcessingException;
}
