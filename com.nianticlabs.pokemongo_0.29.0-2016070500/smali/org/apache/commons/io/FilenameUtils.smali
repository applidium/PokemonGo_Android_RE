.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 110
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 117
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "fullFilenameToAdd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 482
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 483
    .local v2, "prefix":I
    if-gez v2, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-object v3

    .line 486
    :cond_1
    if-lez v2, :cond_2

    .line 487
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 489
    :cond_2
    if-eqz p0, :cond_0

    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 493
    .local v1, "len":I
    if-nez v1, :cond_3

    .line 494
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 496
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 497
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 500
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "canonicalParent"    # Ljava/lang/String;
    .param p1, "canonicalChild"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 531
    if-nez p0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    if-nez p1, :cond_2

    .line 543
    :cond_1
    :goto_0
    return v0

    .line 539
    :cond_2
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "includeSeparator"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 906
    if-nez p0, :cond_1

    move-object p0, v3

    .line 928
    .end local p0    # "filename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 909
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 910
    .local v2, "prefix":I
    if-gez v2, :cond_2

    move-object p0, v3

    .line 911
    goto :goto_0

    .line 913
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 914
    if-eqz p1, :cond_0

    .line 915
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 920
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 921
    .local v1, "index":I
    if-gez v1, :cond_4

    .line 922
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 924
    :cond_4
    if-eqz p1, :cond_6

    const/4 v3, 0x1

    :goto_1
    add-int v0, v1, v3

    .line 925
    .local v0, "end":I
    if-nez v0, :cond_5

    .line 926
    add-int/lit8 v0, v0, 0x1

    .line 928
    :cond_5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0    # "end":I
    :cond_6
    move v3, v4

    .line 924
    goto :goto_1
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "separatorAdd"    # I

    .prologue
    const/4 v3, 0x0

    .line 824
    if-nez p0, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-object v3

    .line 827
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 828
    .local v2, "prefix":I
    if-ltz v2, :cond_0

    .line 831
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 832
    .local v1, "index":I
    add-int v0, v1, p1

    .line 833
    .local v0, "endIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ltz v1, :cond_2

    if-lt v2, v0, :cond_3

    .line 834
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 836
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "separator"    # C
    .param p2, "keepSeparator"    # Z

    .prologue
    .line 348
    if-nez p0, :cond_1

    .line 349
    const/4 p0, 0x0

    .line 437
    .end local p0    # "filename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 351
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 352
    .local v6, "size":I
    if-eqz v6, :cond_0

    .line 355
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v5

    .line 356
    .local v5, "prefix":I
    if-gez v5, :cond_2

    .line 357
    const/4 p0, 0x0

    goto :goto_0

    .line 360
    :cond_2
    add-int/lit8 v8, v6, 0x2

    new-array v0, v8, [C

    .line 361
    .local v0, "array":[C
    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v0, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 364
    sget-char v8, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne p1, v8, :cond_4

    sget-char v4, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 365
    .local v4, "otherSeparator":C
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v8, v0

    if-ge v1, v8, :cond_5

    .line 366
    aget-char v8, v0, v1

    if-ne v8, v4, :cond_3

    .line 367
    aput-char p1, v0, v1

    .line 365
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 364
    .end local v1    # "i":I
    .end local v4    # "otherSeparator":C
    :cond_4
    sget-char v4, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    goto :goto_1

    .line 372
    .restart local v1    # "i":I
    .restart local v4    # "otherSeparator":C
    :cond_5
    const/4 v3, 0x1

    .line 373
    .local v3, "lastIsDirectory":Z
    add-int/lit8 v8, v6, -0x1

    aget-char v8, v0, v8

    if-eq v8, p1, :cond_6

    .line 374
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "size":I
    .local v7, "size":I
    aput-char p1, v0, v6

    .line 375
    const/4 v3, 0x0

    move v6, v7

    .line 379
    .end local v7    # "size":I
    .restart local v6    # "size":I
    :cond_6
    add-int/lit8 v1, v5, 0x1

    :goto_3
    if-ge v1, v6, :cond_8

    .line 380
    aget-char v8, v0, v1

    if-ne v8, p1, :cond_7

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    if-ne v8, p1, :cond_7

    .line 381
    add-int/lit8 v8, v1, -0x1

    sub-int v9, v6, v1

    invoke-static {v0, v1, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    add-int/lit8 v6, v6, -0x1

    .line 383
    add-int/lit8 v1, v1, -0x1

    .line 379
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 388
    :cond_8
    add-int/lit8 v1, v5, 0x1

    :goto_4
    if-ge v1, v6, :cond_c

    .line 389
    aget-char v8, v0, v1

    if-ne v8, p1, :cond_b

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_b

    add-int/lit8 v8, v5, 0x1

    if-eq v1, v8, :cond_9

    add-int/lit8 v8, v1, -0x2

    aget-char v8, v0, v8

    if-ne v8, p1, :cond_b

    .line 391
    :cond_9
    add-int/lit8 v8, v6, -0x1

    if-ne v1, v8, :cond_a

    .line 392
    const/4 v3, 0x1

    .line 394
    :cond_a
    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v1, -0x1

    sub-int v10, v6, v1

    invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    add-int/lit8 v6, v6, -0x2

    .line 396
    add-int/lit8 v1, v1, -0x1

    .line 388
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 402
    :cond_c
    add-int/lit8 v1, v5, 0x2

    :goto_5
    if-ge v1, v6, :cond_13

    .line 403
    aget-char v8, v0, v1

    if-ne v8, p1, :cond_10

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_10

    add-int/lit8 v8, v1, -0x2

    aget-char v8, v0, v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_10

    add-int/lit8 v8, v5, 0x2

    if-eq v1, v8, :cond_d

    add-int/lit8 v8, v1, -0x3

    aget-char v8, v0, v8

    if-ne v8, p1, :cond_10

    .line 405
    :cond_d
    add-int/lit8 v8, v5, 0x2

    if-ne v1, v8, :cond_e

    .line 406
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 408
    :cond_e
    add-int/lit8 v8, v6, -0x1

    if-ne v1, v8, :cond_f

    .line 409
    const/4 v3, 0x1

    .line 412
    :cond_f
    add-int/lit8 v2, v1, -0x4

    .local v2, "j":I
    :goto_6
    if-lt v2, v5, :cond_12

    .line 413
    aget-char v8, v0, v2

    if-ne v8, p1, :cond_11

    .line 415
    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v2, 0x1

    sub-int v10, v6, v1

    invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    sub-int v8, v1, v2

    sub-int/2addr v6, v8

    .line 417
    add-int/lit8 v1, v2, 0x1

    .line 402
    .end local v2    # "j":I
    :cond_10
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 412
    .restart local v2    # "j":I
    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 422
    :cond_12
    add-int/lit8 v8, v1, 0x1

    sub-int v9, v6, v1

    invoke-static {v0, v8, v0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    add-int/lit8 v8, v1, 0x1

    sub-int/2addr v8, v5

    sub-int/2addr v6, v8

    .line 424
    add-int/lit8 v1, v5, 0x1

    goto :goto_7

    .line 428
    .end local v2    # "j":I
    :cond_13
    if-gtz v6, :cond_14

    .line 429
    const-string p0, ""

    goto/16 :goto_0

    .line 431
    :cond_14
    if-gt v6, v5, :cond_15

    .line 432
    new-instance p0, Ljava/lang/String;

    .end local p0    # "filename":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 434
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_15
    if-eqz v3, :cond_16

    if-eqz p2, :cond_16

    .line 435
    new-instance p0, Ljava/lang/String;

    .end local p0    # "filename":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 437
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_16
    new-instance p0, Ljava/lang/String;

    .end local p0    # "filename":Ljava/lang/String;
    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x1

    invoke-direct {p0, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1050
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;
    .param p2, "normalized"    # Z
    .param p3, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    .line 1116
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1117
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 1130
    :goto_0
    return v0

    .line 1117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1119
    :cond_2
    if-eqz p2, :cond_4

    .line 1120
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1121
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1122
    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    .line 1123
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error normalizing one or both of the file names"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_4
    if-nez p3, :cond_5

    .line 1128
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1130
    :cond_5
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1081
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1098
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1065
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 974
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 996
    if-nez p0, :cond_0

    .line 997
    const/4 v1, 0x0

    .line 1003
    :goto_0
    return-object v1

    .line 999
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 1000
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1001
    const-string v1, ""

    goto :goto_0

    .line 1003
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 865
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 895
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 949
    if-nez p0, :cond_0

    .line 950
    const/4 v1, 0x0

    .line 953
    :goto_0
    return-object v1

    .line 952
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 953
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 786
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 750
    if-nez p0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-object v1

    .line 753
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    .line 754
    .local v0, "len":I
    if-ltz v0, :cond_0

    .line 757
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 760
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 623
    if-nez p0, :cond_1

    move v5, v7

    .line 671
    :cond_0
    :goto_0
    return v5

    .line 626
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 627
    .local v2, "len":I
    if-nez v2, :cond_2

    move v5, v6

    .line 628
    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 631
    .local v0, "ch0":C
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_3

    move v5, v7

    .line 632
    goto :goto_0

    .line 634
    :cond_3
    if-ne v2, v5, :cond_5

    .line 635
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_4

    move v5, v8

    .line 636
    goto :goto_0

    .line 638
    :cond_4
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 640
    :cond_5
    const/16 v9, 0x7e

    if-ne v0, v9, :cond_9

    .line 641
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 642
    .local v3, "posUnix":I
    const/16 v6, 0x5c

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 643
    .local v4, "posWin":I
    if-ne v3, v7, :cond_6

    if-ne v4, v7, :cond_6

    .line 644
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 646
    :cond_6
    if-ne v3, v7, :cond_7

    move v3, v4

    .line 647
    :cond_7
    if-ne v4, v7, :cond_8

    move v4, v3

    .line 648
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 650
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 651
    .local v1, "ch1":C
    const/16 v9, 0x3a

    if-ne v1, v9, :cond_d

    .line 652
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 653
    const/16 v5, 0x41

    if-lt v0, v5, :cond_c

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_c

    .line 654
    if-eq v2, v8, :cond_a

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    move v5, v8

    .line 655
    goto :goto_0

    .line 657
    :cond_b
    const/4 v5, 0x3

    goto :goto_0

    :cond_c
    move v5, v7

    .line 659
    goto :goto_0

    .line 661
    :cond_d
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 662
    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 663
    .restart local v3    # "posUnix":I
    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 664
    .restart local v4    # "posWin":I
    if-ne v3, v7, :cond_e

    if-eq v4, v7, :cond_f

    :cond_e
    if-eq v3, v8, :cond_f

    if-ne v4, v8, :cond_10

    :cond_f
    move v5, v7

    .line 665
    goto/16 :goto_0

    .line 667
    :cond_10
    if-ne v3, v7, :cond_11

    move v3, v4

    .line 668
    :cond_11
    if-ne v4, v7, :cond_12

    move v4, v3

    .line 669
    :cond_12
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 671
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_13
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto/16 :goto_0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 711
    if-nez p0, :cond_0

    .line 716
    :goto_0
    return v2

    .line 714
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 715
    .local v0, "extensionPos":I
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 716
    .local v1, "lastSeparator":I
    if-le v1, v0, :cond_1

    move v0, v2

    .end local v0    # "extensionPos":I
    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 689
    if-nez p0, :cond_0

    .line 690
    const/4 v2, -0x1

    .line 694
    :goto_0
    return v2

    .line 692
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 693
    .local v0, "lastUnixPos":I
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 694
    .local v1, "lastWindowsPos":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1146
    if-nez p0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v1

    .line 1149
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1150
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1152
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "fileExt":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1195
    if-nez p0, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return v4

    .line 1198
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1199
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 1201
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1202
    .local v1, "fileExt":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1203
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v3

    .line 1204
    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extensions"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1168
    if-nez p0, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return v6

    .line 1171
    :cond_1
    if-eqz p1, :cond_2

    array-length v7, p1

    if-nez v7, :cond_4

    .line 1172
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 1174
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1175
    .local v2, "fileExt":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1176
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v5

    .line 1177
    goto :goto_0

    .line 1175
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 149
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSystemWindows()Z
    .locals 2

    .prologue
    .line 138
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "unixSeparator"    # Z

    .prologue
    .line 241
    if-eqz p1, :cond_0

    const/16 v0, 0x2f

    .line 242
    .local v0, "separator":C
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    .end local v0    # "separator":C
    :cond_0
    const/16 v0, 0x5c

    goto :goto_0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 288
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "unixSeparator"    # Z

    .prologue
    .line 335
    if-eqz p1, :cond_0

    const/16 v0, 0x2f

    .line 336
    .local v0, "separator":C
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 335
    .end local v0    # "separator":C
    :cond_0
    const/16 v0, 0x5c

    goto :goto_0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1026
    if-nez p0, :cond_1

    .line 1027
    const/4 p0, 0x0

    .line 1033
    .end local p0    # "filename":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 1029
    .end local v0    # "index":I
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 1030
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1033
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 580
    if-nez p0, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 586
    :goto_0
    return-object v0

    .line 583
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 586
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5c

    .line 554
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 557
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2f

    .line 567
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 570
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x5c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2a

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x3f

    .line 1371
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1372
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v7

    .line 1398
    :goto_0
    return-object v4

    .line 1375
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1376
    .local v0, "array":[C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1378
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 1379
    aget-char v4, v0, v2

    if-eq v4, v6, :cond_1

    aget-char v4, v0, v2

    if-ne v4, v8, :cond_6

    .line 1380
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1384
    :cond_2
    aget-char v4, v0, v2

    if-ne v4, v6, :cond_4

    .line 1385
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1386
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1388
    :cond_5
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1391
    :cond_6
    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1394
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 1395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1234
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1278
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return v7

    .line 1281
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v7, v8

    .line 1282
    goto :goto_0

    .line 1284
    :cond_3
    if-nez p2, :cond_4

    .line 1285
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1287
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1288
    .local v5, "wcs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1289
    .local v0, "anyChars":Z
    const/4 v4, 0x0

    .line 1290
    .local v4, "textIdx":I
    const/4 v6, 0x0

    .line 1291
    .local v6, "wcsIdx":I
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 1295
    .local v2, "backtrack":Ljava/util/Stack;, "Ljava/util/Stack<[I>;"
    :cond_5
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 1296
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1297
    .local v1, "array":[I
    aget v6, v1, v8

    .line 1298
    aget v4, v1, v7

    .line 1299
    const/4 v0, 0x1

    .line 1303
    .end local v1    # "array":[I
    :cond_6
    :goto_1
    array-length v9, v5

    if-ge v6, v9, :cond_7

    .line 1305
    aget-object v9, v5, v6

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1307
    add-int/lit8 v4, v4, 0x1

    .line 1308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_9

    .line 1350
    :cond_7
    :goto_2
    array-length v9, v5

    if-ne v6, v9, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v4, v9, :cond_0

    .line 1354
    :cond_8
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v9

    if-gtz v9, :cond_5

    move v7, v8

    .line 1356
    goto :goto_0

    .line 1311
    :cond_9
    const/4 v0, 0x0

    .line 1346
    :cond_a
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1313
    :cond_b
    aget-object v9, v5, v6

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1315
    const/4 v0, 0x1

    .line 1316
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_a

    .line 1317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    .line 1322
    :cond_c
    if-eqz v0, :cond_e

    .line 1324
    aget-object v9, v5, v6

    invoke-virtual {p2, p0, v4, v9}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 1325
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    .line 1329
    add-int/lit8 v9, v4, 0x1

    aget-object v10, v5, v6

    invoke-virtual {p2, p0, v9, v10}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 1330
    .local v3, "repeat":I
    if-ltz v3, :cond_d

    .line 1331
    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v6, v9, v8

    aput v3, v9, v7

    invoke-virtual {v2, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    .end local v3    # "repeat":I
    :cond_d
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    .line 1343
    const/4 v0, 0x0

    goto :goto_3

    .line 1335
    :cond_e
    aget-object v9, v5, v6

    invoke-virtual {p2, p0, v4, v9}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_2
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1260
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method
