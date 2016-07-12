.class public Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;
.super Lcom/fasterxml/jackson/core/util/JsonParserDelegate;
.source "FilteringParserDelegate.java"


# instance fields
.field protected _allowMultipleMatches:Z

.field protected _currToken:Lcom/fasterxml/jackson/core/JsonToken;

.field protected _exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _includeImmediateParent:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _includePath:Z

.field protected _itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected _lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

.field protected _matchCount:I

.field protected rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;ZZ)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "f"    # Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .param p3, "includePath"    # Z
    .param p4, "allowMultipleMatches"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includeImmediateParent:Z

    .line 118
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 120
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 121
    invoke-static {p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createRootContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 122
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    .line 123
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_allowMultipleMatches:Z

    .line 124
    return-void
.end method

.method private _nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "buffRoot"    # Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 721
    move-object v0, p1

    .line 722
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 723
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 743
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    return-object v2

    .line 728
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v0, v3, :cond_1

    .line 729
    const-string v3, "Internal error: failed to locate expected buffered tokens"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v3

    throw v3

    .line 736
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->findChildOf(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    .line 737
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 738
    if-nez v0, :cond_2

    .line 739
    const-string v3, "Unexpected problem: chain of filtered context broken"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v3

    throw v3

    .line 741
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 742
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 743
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0
.end method


# virtual methods
.method protected _filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 878
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto :goto_0
.end method

.method protected final _nextToken2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 439
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 440
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v3, :cond_1

    .line 441
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .line 577
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_1
    return-object v4

    .line 445
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 569
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 570
    .local v0, "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_11

    .line 571
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 447
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 448
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_2

    .line 449
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 450
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 452
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    if-nez v0, :cond_3

    .line 453
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 457
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 458
    if-nez v0, :cond_4

    .line 459
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 462
    :cond_4
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v5, :cond_5

    .line 463
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 465
    :cond_5
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 466
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_6

    .line 467
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 468
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 470
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 472
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_0

    .line 473
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 474
    if-eqz v3, :cond_0

    .line 475
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .line 476
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 482
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 483
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_7

    .line 484
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 485
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 487
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_7
    if-nez v0, :cond_8

    .line 488
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 492
    :cond_8
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 493
    if-nez v0, :cond_9

    .line 494
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 497
    :cond_9
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v5, :cond_a

    .line 498
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 500
    :cond_a
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 501
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_b

    .line 502
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 503
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 505
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_b
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 506
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_0

    .line 507
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 508
    if-eqz v3, :cond_0

    .line 509
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .line 510
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 518
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v2

    .line 519
    .local v2, "returnEnd":Z
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 520
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    if-eqz v0, :cond_c

    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v5, :cond_c

    .line 521
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    .line 523
    :cond_c
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 524
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 525
    if-eqz v2, :cond_0

    .line 526
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 533
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v2    # "returnEnd":Z
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 535
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_d

    .line 536
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 537
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 539
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_d
    if-nez v0, :cond_e

    .line 540
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 541
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 544
    :cond_e
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 545
    if-nez v0, :cond_f

    .line 546
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 547
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 550
    :cond_f
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 551
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_10

    .line 552
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_0

    .line 553
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 558
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_10
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_0

    .line 559
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 560
    if-eqz v3, :cond_0

    .line 561
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .line 562
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 573
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_11
    if-eqz v0, :cond_0

    .line 574
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 575
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v5, :cond_12

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 577
    :cond_12
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final _nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .param p1, "buffRoot"    # Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 594
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 595
    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v4, :cond_2

    .line 709
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    :goto_1
    return-object v4

    .line 604
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 701
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 702
    .local v0, "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_12

    .line 703
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_1

    .line 606
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_0
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v8, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 607
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    if-nez v0, :cond_3

    .line 608
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 611
    :cond_3
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v7, :cond_4

    .line 612
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 614
    :cond_4
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 615
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_5

    .line 616
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 617
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_1

    .line 619
    :cond_5
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto :goto_0

    .line 623
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 624
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_6

    .line 625
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto :goto_1

    .line 628
    :cond_6
    if-nez v0, :cond_7

    .line 629
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 633
    :cond_7
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 634
    if-nez v0, :cond_8

    .line 635
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 638
    :cond_8
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v7, :cond_9

    .line 639
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 641
    :cond_9
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 642
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_a

    .line 643
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 644
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_1

    .line 646
    :cond_a
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto/16 :goto_0

    .line 654
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_2
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 655
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    if-eqz v0, :cond_b

    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v7, :cond_b

    .line 656
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    .line 658
    :cond_b
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v7, p1, :cond_d

    move v1, v5

    .line 659
    .local v1, "gotEnd":Z
    :goto_2
    if-eqz v1, :cond_e

    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v7

    if-eqz v7, :cond_e

    move v3, v5

    .line 661
    .local v3, "returnEnd":Z
    :goto_3
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 662
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 664
    if-nez v3, :cond_1

    .line 668
    if-nez v1, :cond_c

    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v7, p1, :cond_0

    .line 669
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_1

    .end local v1    # "gotEnd":Z
    .end local v3    # "returnEnd":Z
    :cond_d
    move v1, v6

    .line 658
    goto :goto_2

    .restart local v1    # "gotEnd":Z
    :cond_e
    move v3, v6

    .line 659
    goto :goto_3

    .line 676
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v1    # "gotEnd":Z
    :pswitch_3
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 678
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_f

    .line 679
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 680
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_1

    .line 682
    :cond_f
    if-nez v0, :cond_10

    .line 683
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 684
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 687
    :cond_10
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 688
    if-nez v0, :cond_11

    .line 689
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 690
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 693
    :cond_11
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 694
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_0

    .line 695
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_1

    .line 705
    .end local v2    # "name":Ljava/lang/String;
    :cond_12
    if-eqz v0, :cond_0

    .line 706
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 707
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v7, :cond_13

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 709
    :cond_13
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_1

    .line 604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clearCurrentToken()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 201
    :cond_0
    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 1
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getByteValue()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B

    move-result v0

    return v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    .line 182
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_2

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v1

    .line 184
    .local v1, "parent":Lcom/fasterxml/jackson/core/JsonStreamContext;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 186
    .end local v1    # "parent":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :goto_0
    return-object v2

    .line 184
    .restart local v1    # "parent":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 186
    .end local v1    # "parent":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final getCurrentTokenId()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 152
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    goto :goto_0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLastClearedToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMatchCount()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_matchCount:I

    return v0
.end method

.method public getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getShortValue()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I

    move-result v0

    return v0
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 3
    .param p1, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentToken()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextCharacters()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z

    move-result v0

    return v0
.end method

.method public final hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z
    .locals 1
    .param p1, "t"    # Lcom/fasterxml/jackson/core/JsonToken;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTokenId(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 158
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_2

    .line 159
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 159
    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v3

    if-eq v3, p1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isExpectedStartArrayToken()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpectedStartObjectToken()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 225
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 227
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    if-eqz v0, :cond_3

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 230
    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v4, :cond_1

    .line 231
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    .line 426
    :goto_0
    return-object v5

    .line 235
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v0, v5, :cond_2

    .line 236
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 237
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->inArray()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 241
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    .line 242
    goto :goto_0

    .line 257
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->findChildOf(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    .line 258
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 259
    if-nez v0, :cond_0

    .line 260
    const-string v5, "Unexpected problem: chain of filtered context broken"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v5

    throw v5

    .line 266
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 267
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v4, :cond_4

    .line 269
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 410
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 411
    .local v1, "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_16

    .line 412
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto :goto_0

    .line 277
    .end local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 278
    .restart local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_5

    .line 279
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 280
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto :goto_0

    .line 282
    :cond_5
    if-nez v1, :cond_7

    .line 283
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 426
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextToken2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto :goto_0

    .line 287
    :cond_7
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 288
    if-nez v1, :cond_8

    .line 289
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 292
    :cond_8
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v5, :cond_9

    .line 293
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 295
    :cond_9
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 296
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_a

    .line 297
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 298
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto/16 :goto_0

    .line 300
    :cond_a
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 303
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_6

    .line 304
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 305
    if-eqz v4, :cond_6

    .line 306
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    .line 307
    goto/16 :goto_0

    .line 313
    .end local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 314
    .restart local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_b

    .line 315
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 316
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto/16 :goto_0

    .line 318
    :cond_b
    if-nez v1, :cond_c

    .line 319
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 323
    :cond_c
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 324
    if-nez v1, :cond_d

    .line 325
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 328
    :cond_d
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v5, :cond_e

    .line 329
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 331
    :cond_e
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 332
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_f

    .line 333
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 334
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto/16 :goto_0

    .line 336
    :cond_f
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 338
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_6

    .line 339
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 340
    if-eqz v4, :cond_6

    .line 341
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    .line 342
    goto/16 :goto_0

    .line 352
    .end local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v3

    .line 353
    .local v3, "returnEnd":Z
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 354
    .restart local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    if-eqz v1, :cond_10

    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v5, :cond_10

    .line 355
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    .line 357
    :cond_10
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 358
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 359
    if-eqz v3, :cond_6

    .line 360
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto/16 :goto_0

    .line 367
    .end local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v3    # "returnEnd":Z
    :pswitch_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 370
    .restart local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_12

    .line 371
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 372
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-nez v5, :cond_11

    .line 375
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includeImmediateParent:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v5

    if-nez v5, :cond_11

    .line 376
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 377
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 380
    :cond_11
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto/16 :goto_0

    .line 382
    :cond_12
    if-nez v1, :cond_13

    .line 383
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 384
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 387
    :cond_13
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 388
    if-nez v1, :cond_14

    .line 389
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 390
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 393
    :cond_14
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 394
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_15

    .line 395
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_15

    .line 396
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto/16 :goto_0

    .line 399
    :cond_15
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_6

    .line 400
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 401
    if-eqz v4, :cond_6

    .line 402
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    .line 403
    goto/16 :goto_0

    .line 414
    .end local v2    # "name":Ljava/lang/String;
    :cond_16
    if-eqz v1, :cond_6

    .line 415
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 416
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v5, :cond_17

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 418
    :cond_17
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v5, v4

    goto/16 :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 752
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 755
    :cond_0
    return-object v0
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not currently override name during filtering read"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-object p0

    .line 770
    :cond_1
    const/4 v0, 0x1

    .line 775
    .local v0, "open":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 776
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 781
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 782
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    goto :goto_0
.end method
