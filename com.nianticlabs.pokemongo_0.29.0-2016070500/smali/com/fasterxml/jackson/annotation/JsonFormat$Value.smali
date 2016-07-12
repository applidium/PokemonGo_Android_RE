.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.super Ljava/lang/Object;
.source "JsonFormat.java"

# interfaces
.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue",
        "<",
        "Lcom/fasterxml/jackson/annotation/JsonFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private _timezone:Ljava/util/TimeZone;

.field private final features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

.field private final locale:Ljava/util/Locale;

.field private final pattern:Ljava/lang/String;

.field private final shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field private final timezoneStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 336
    const-string v1, ""

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v3, ""

    const-string v4, ""

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 337
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V
    .locals 6
    .param p1, "ann"    # Lcom/fasterxml/jackson/annotation/JsonFormat;

    .prologue
    .line 340
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->locale()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->timezone()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->construct(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "tzStr"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 397
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .prologue
    const/4 v5, 0x0

    .line 349
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "##default"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "##default"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move-object v4, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 355
    return-void

    .line 349
    :cond_2
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, p4

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "tz"    # Ljava/util/TimeZone;
    .param p6, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    .line 376
    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .end local p2    # "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 377
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    .line 378
    iput-object p5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 379
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    .line 380
    if-nez p6, :cond_1

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object p6

    .end local p6    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    iput-object p6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 381
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    .line 363
    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .end local p2    # "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 364
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    .line 365
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    .line 367
    if-nez p5, :cond_1

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object p5

    .end local p5    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    iput-object p5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 368
    return-void
.end method

.method public static forPattern(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p0, "p"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 411
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method


# virtual methods
.method public getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->get(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 485
    .local v0, "tz":Ljava/util/TimeZone;
    if-nez v0, :cond_1

    .line 486
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 487
    const/4 v1, 0x0

    .line 492
    :goto_0
    return-object v1

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 490
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    :cond_1
    move-object v1, v0

    .line 492
    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPattern()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShape()Z
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public timeZoneAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public valueFor()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/fasterxml/jackson/annotation/JsonFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    return-object v0
.end method

.method public withFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->with([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    .line 447
    .local v6, "newFeats":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    if-ne v6, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 432
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public withPattern(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 418
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public withShape(Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "s"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .prologue
    .line 425
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 439
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public withoutFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->without([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    .line 456
    .local v6, "newFeats":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    if-ne v6, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    move-object p0, v0

    goto :goto_0
.end method
