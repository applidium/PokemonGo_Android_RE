.class public Lspacemadness/com/lunarconsole/debug/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# static fields
.field private static IsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2379
    const/4 v0, 0x1

    sput-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AreEqual(BB)V
    .locals 4
    .param p0, "expected"    # B
    .param p1, "actual"    # B

    .prologue
    .line 240
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 241
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_0
    return-void
.end method

.method public static AreEqual(BBLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 246
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 247
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_0
    return-void
.end method

.method public static AreEqual(BBLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 260
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 261
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_0
    return-void
.end method

.method public static AreEqual(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 267
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_0
    return-void
.end method

.method public static AreEqual(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 274
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 275
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_0
    return-void
.end method

.method public static varargs AreEqual(BBLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 253
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 254
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method

.method public static AreEqual(CC)V
    .locals 4
    .param p0, "expected"    # C
    .param p1, "actual"    # C

    .prologue
    .line 321
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 322
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :cond_0
    return-void
.end method

.method public static AreEqual(CCLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 328
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 329
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :cond_0
    return-void
.end method

.method public static AreEqual(CCLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 342
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 343
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_0
    return-void
.end method

.method public static AreEqual(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 349
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 350
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :cond_0
    return-void
.end method

.method public static AreEqual(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 356
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 357
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :cond_0
    return-void
.end method

.method public static varargs AreEqual(CCLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 335
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 336
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    return-void
.end method

.method public static AreEqual(DD)V
    .locals 4
    .param p0, "expected"    # D
    .param p2, "actual"    # D

    .prologue
    .line 489
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    :cond_0
    return-void
.end method

.method public static AreEqual(DDLjava/lang/String;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 496
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    :cond_0
    return-void
.end method

.method public static AreEqual(DDLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 510
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    :cond_0
    return-void
.end method

.method public static AreEqual(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 517
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    :cond_0
    return-void
.end method

.method public static AreEqual(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 524
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    :cond_0
    return-void
.end method

.method public static varargs AreEqual(DDLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 503
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    .line 504
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    :cond_0
    return-void
.end method

.method public static AreEqual(FF)V
    .locals 4
    .param p0, "expected"    # F
    .param p1, "actual"    # F

    .prologue
    .line 447
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :cond_0
    return-void
.end method

.method public static AreEqual(FFLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 454
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    :cond_0
    return-void
.end method

.method public static AreEqual(FFLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 468
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    return-void
.end method

.method public static AreEqual(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 475
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    :cond_0
    return-void
.end method

.method public static AreEqual(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 482
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_0
    return-void
.end method

.method public static varargs AreEqual(FFLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 461
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    .line 462
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    :cond_0
    return-void
.end method

.method public static AreEqual(II)V
    .locals 4
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .prologue
    .line 363
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 364
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_0
    return-void
.end method

.method public static AreEqual(IILjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 370
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 371
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_0
    return-void
.end method

.method public static AreEqual(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 384
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 385
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :cond_0
    return-void
.end method

.method public static AreEqual(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 391
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 392
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_0
    return-void
.end method

.method public static AreEqual(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 398
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 399
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :cond_0
    return-void
.end method

.method public static varargs AreEqual(IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 377
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 378
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_0
    return-void
.end method

.method public static AreEqual(JJ)V
    .locals 4
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .prologue
    .line 405
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_0
    return-void
.end method

.method public static AreEqual(JJLjava/lang/String;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 412
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :cond_0
    return-void
.end method

.method public static AreEqual(JJLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 426
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :cond_0
    return-void
.end method

.method public static AreEqual(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 433
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    :cond_0
    return-void
.end method

.method public static AreEqual(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 440
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_0
    return-void
.end method

.method public static varargs AreEqual(JJLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 419
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    .line 420
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :cond_0
    return-void
.end method

.method public static AreEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 531
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    .line 532
    :cond_1
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    :cond_2
    return-void
.end method

.method public static AreEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 538
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    .line 539
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    :cond_2
    return-void
.end method

.method public static AreEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 552
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    .line 553
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    :cond_2
    return-void
.end method

.method public static AreEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 559
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    .line 560
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    :cond_2
    return-void
.end method

.method public static AreEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 566
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    .line 567
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    :cond_2
    return-void
.end method

.method public static varargs AreEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 545
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    .line 546
    :cond_1
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    :cond_2
    return-void
.end method

.method public static AreEqual(SS)V
    .locals 4
    .param p0, "expected"    # S
    .param p1, "actual"    # S

    .prologue
    .line 280
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 281
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    :cond_0
    return-void
.end method

.method public static AreEqual(SSLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 288
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_0
    return-void
.end method

.method public static AreEqual(SSLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 301
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 302
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_0
    return-void
.end method

.method public static AreEqual(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 308
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 309
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_0
    return-void
.end method

.method public static AreEqual(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 315
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 316
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_0
    return-void
.end method

.method public static varargs AreEqual(SSLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 294
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 295
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_0
    return-void
.end method

.method public static AreEqual(ZZ)V
    .locals 4
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z

    .prologue
    .line 199
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 200
    const-string v0, "Assertion failed: expected \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static AreEqual(ZZLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 206
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 207
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static AreEqual(ZZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 219
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method

.method public static AreEqual(ZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 226
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 227
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_0
    return-void
.end method

.method public static AreEqual(ZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 233
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 234
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_0
    return-void
.end method

.method public static varargs AreEqual(ZZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 212
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 213
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_0
    return-void
.end method

.method public static AreNotEqual(BB)V
    .locals 4
    .param p0, "expected"    # B
    .param p1, "actual"    # B

    .prologue
    .line 615
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 616
    const-string v0, "Assertion failed: values are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :cond_0
    return-void
.end method

.method public static AreNotEqual(BBLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 622
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 623
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    :cond_0
    return-void
.end method

.method public static AreNotEqual(BBLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 636
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 637
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    :cond_0
    return-void
.end method

.method public static AreNotEqual(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 643
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 644
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    :cond_0
    return-void
.end method

.method public static AreNotEqual(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 650
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 651
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    :cond_0
    return-void
.end method

.method public static varargs AreNotEqual(BBLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 629
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 630
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_0
    return-void
.end method

.method public static AreNotEqual(CC)V
    .locals 4
    .param p0, "expected"    # C
    .param p1, "actual"    # C

    .prologue
    .line 698
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 699
    const-string v0, "Assertion failed: values are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    :cond_0
    return-void
.end method

.method public static AreNotEqual(CCLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 705
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 706
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    :cond_0
    return-void
.end method

.method public static AreNotEqual(CCLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 719
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 720
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    :cond_0
    return-void
.end method

.method public static AreNotEqual(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 726
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 727
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    :cond_0
    return-void
.end method

.method public static AreNotEqual(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 733
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 734
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    :cond_0
    return-void
.end method

.method public static varargs AreNotEqual(CCLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 712
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 713
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    :cond_0
    return-void
.end method

.method public static AreNotEqual(DD)V
    .locals 4
    .param p0, "expected"    # D
    .param p2, "actual"    # D

    .prologue
    .line 866
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    .line 867
    const-string v0, "Assertion failed: values are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    :cond_0
    return-void
.end method

.method public static AreNotEqual(DDLjava/lang/String;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 873
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    .line 874
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    :cond_0
    return-void
.end method

.method public static AreNotEqual(DDLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 887
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    .line 888
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    :cond_0
    return-void
.end method

.method public static AreNotEqual(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 894
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    .line 895
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    :cond_0
    return-void
.end method

.method public static AreNotEqual(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 901
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    .line 902
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    :cond_0
    return-void
.end method

.method public static varargs AreNotEqual(DDLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 880
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    .line 881
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    :cond_0
    return-void
.end method

.method public static AreNotEqual(FF)V
    .locals 4
    .param p0, "expected"    # F
    .param p1, "actual"    # F

    .prologue
    .line 824
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    .line 825
    const-string v0, "Assertion failed: values are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    :cond_0
    return-void
.end method

.method public static AreNotEqual(FFLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 831
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    .line 832
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    :cond_0
    return-void
.end method

.method public static AreNotEqual(FFLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 845
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    .line 846
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    :cond_0
    return-void
.end method

.method public static AreNotEqual(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 852
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    .line 853
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    :cond_0
    return-void
.end method

.method public static AreNotEqual(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 859
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    .line 860
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    :cond_0
    return-void
.end method

.method public static varargs AreNotEqual(FFLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 838
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    .line 839
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    :cond_0
    return-void
.end method

.method public static AreNotEqual(II)V
    .locals 4
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .prologue
    .line 740
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 741
    const-string v0, "Assertion failed: values are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    :cond_0
    return-void
.end method

.method public static AreNotEqual(IILjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 747
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 748
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    :cond_0
    return-void
.end method

.method public static AreNotEqual(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 761
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 762
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    :cond_0
    return-void
.end method

.method public static AreNotEqual(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 768
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 769
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    :cond_0
    return-void
.end method

.method public static AreNotEqual(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 775
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 776
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    :cond_0
    return-void
.end method

.method public static varargs AreNotEqual(IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 754
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 755
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    :cond_0
    return-void
.end method

.method public static AreNotEqual(JJ)V
    .locals 4
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .prologue
    .line 782
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 783
    const-string v0, "Assertion failed: values are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    :cond_0
    return-void
.end method

.method public static AreNotEqual(JJLjava/lang/String;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 789
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 790
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    :cond_0
    return-void
.end method

.method public static AreNotEqual(JJLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 803
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    :cond_0
    return-void
.end method

.method public static AreNotEqual(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 810
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 811
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    :cond_0
    return-void
.end method

.method public static AreNotEqual(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 817
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 818
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    :cond_0
    return-void
.end method

.method public static varargs AreNotEqual(JJLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 796
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 797
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    :cond_0
    return-void
.end method

.method public static AreNotEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 908
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 909
    :cond_1
    const-string v0, "Assertion failed: Objects are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    :cond_2
    return-void
.end method

.method public static AreNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 915
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 916
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 917
    :cond_2
    return-void
.end method

.method public static AreNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 929
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 930
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    :cond_2
    return-void
.end method

.method public static AreNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 936
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 937
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    :cond_2
    return-void
.end method

.method public static AreNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 943
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 944
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    :cond_2
    return-void
.end method

.method public static varargs AreNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 922
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 923
    :cond_1
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    :cond_2
    return-void
.end method

.method public static AreNotEqual(SS)V
    .locals 4
    .param p0, "expected"    # S
    .param p1, "actual"    # S

    .prologue
    .line 657
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 658
    const-string v0, "Assertion failed: values are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :cond_0
    return-void
.end method

.method public static AreNotEqual(SSLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 664
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 665
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    :cond_0
    return-void
.end method

.method public static AreNotEqual(SSLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 678
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 679
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    :cond_0
    return-void
.end method

.method public static AreNotEqual(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 684
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 685
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    :cond_0
    return-void
.end method

.method public static AreNotEqual(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 691
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 692
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    :cond_0
    return-void
.end method

.method public static varargs AreNotEqual(SSLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 671
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 672
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :cond_0
    return-void
.end method

.method public static AreNotEqual(ZZ)V
    .locals 4
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z

    .prologue
    .line 573
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 574
    const-string v0, "Assertion failed: values are equal \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    :cond_0
    return-void
.end method

.method public static AreNotEqual(ZZLjava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 580
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 581
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    :cond_0
    return-void
.end method

.method public static AreNotEqual(ZZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 594
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 595
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_0
    return-void
.end method

.method public static AreNotEqual(ZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 601
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 602
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    :cond_0
    return-void
.end method

.method public static AreNotEqual(ZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 608
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 609
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    :cond_0
    return-void
.end method

.method public static varargs AreNotEqual(ZZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 587
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 588
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    :cond_0
    return-void
.end method

.method public static AreNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 1999
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 2000
    const-string v0, "Assertion failed: Object references are the same \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2001
    :cond_0
    return-void
.end method

.method public static AreNotSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2006
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 2007
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2008
    :cond_0
    return-void
.end method

.method public static AreNotSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 2020
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 2021
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2022
    :cond_0
    return-void
.end method

.method public static AreNotSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 2027
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 2028
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2029
    :cond_0
    return-void
.end method

.method public static AreNotSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 2034
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 2035
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2036
    :cond_0
    return-void
.end method

.method public static varargs AreNotSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2013
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    .line 2014
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2015
    :cond_0
    return-void
.end method

.method public static AreSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 1957
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 1958
    const-string v0, "Assertion failed: Object references are not the same \'%s\' but was \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1959
    :cond_0
    return-void
.end method

.method public static AreSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1964
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 1965
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1966
    :cond_0
    return-void
.end method

.method public static AreSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1978
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 1979
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1980
    :cond_0
    return-void
.end method

.method public static AreSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1985
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 1986
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1987
    :cond_0
    return-void
.end method

.method public static AreSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1992
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 1993
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1994
    :cond_0
    return-void
.end method

.method public static varargs AreSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1971
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    .line 1972
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1973
    :cond_0
    return-void
.end method

.method private static varargs AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2371
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0, p1}, Lspacemadness/com/lunarconsole/utils/StringUtils;->TryFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static Contains(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "expected":Ljava/lang/Object;, "TT;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v2, 0x0

    .line 2041
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2043
    :cond_0
    if-nez p1, :cond_2

    .line 2044
    const-string v0, "Assertion failed: collection is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2048
    :cond_1
    :goto_0
    return-void

    .line 2046
    :cond_2
    const-string v0, "Assertion failed: collection doesn\'t contain the item %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static Fail()V
    .locals 2

    .prologue
    .line 2065
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    .line 2066
    const-string v0, "Assertion failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    :cond_0
    return-void
.end method

.method public static Fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 2072
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    .line 2073
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2074
    :cond_0
    return-void
.end method

.method public static Fail(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 2086
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    .line 2087
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2088
    :cond_0
    return-void
.end method

.method public static Fail(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 2093
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    .line 2094
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2095
    :cond_0
    return-void
.end method

.method public static Fail(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 2100
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    .line 2101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p0, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2102
    :cond_0
    return-void
.end method

.method public static varargs Fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2079
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    .line 2080
    invoke-static {p0, p1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2081
    :cond_0
    return-void
.end method

.method public static Greater(BB)V
    .locals 4
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 949
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 950
    const-string v0, "Assertion failed: \'%s\' > \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    :cond_0
    return-void
.end method

.method public static Greater(BBLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 955
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 956
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    :cond_0
    return-void
.end method

.method public static Greater(BBLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 967
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 968
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    :cond_0
    return-void
.end method

.method public static Greater(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 973
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 974
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    :cond_0
    return-void
.end method

.method public static Greater(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 979
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 980
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    :cond_0
    return-void
.end method

.method public static varargs Greater(BBLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 961
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 962
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    :cond_0
    return-void
.end method

.method public static Greater(CC)V
    .locals 4
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 1021
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1022
    const-string v0, "Assertion failed: \'%s\' > \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    :cond_0
    return-void
.end method

.method public static Greater(CCLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1027
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1028
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    :cond_0
    return-void
.end method

.method public static Greater(CCLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1039
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1040
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    :cond_0
    return-void
.end method

.method public static Greater(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1045
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1046
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    :cond_0
    return-void
.end method

.method public static Greater(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1051
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1052
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    :cond_0
    return-void
.end method

.method public static varargs Greater(CCLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1033
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1034
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    :cond_0
    return-void
.end method

.method public static Greater(DD)V
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1165
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    .line 1166
    const-string v0, "Assertion failed: \'%s\' > \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    :cond_0
    return-void
.end method

.method public static Greater(DDLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1171
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    .line 1172
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    :cond_0
    return-void
.end method

.method public static Greater(DDLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1183
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    .line 1184
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    :cond_0
    return-void
.end method

.method public static Greater(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1189
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    .line 1190
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1191
    :cond_0
    return-void
.end method

.method public static Greater(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1195
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    .line 1196
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    :cond_0
    return-void
.end method

.method public static varargs Greater(DDLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1177
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    .line 1178
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    :cond_0
    return-void
.end method

.method public static Greater(FF)V
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1129
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 1130
    const-string v0, "Assertion failed: \'%s\' > \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    :cond_0
    return-void
.end method

.method public static Greater(FFLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1135
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    :cond_0
    return-void
.end method

.method public static Greater(FFLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1147
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 1148
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    :cond_0
    return-void
.end method

.method public static Greater(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1153
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 1154
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    :cond_0
    return-void
.end method

.method public static Greater(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1159
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 1160
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    :cond_0
    return-void
.end method

.method public static varargs Greater(FFLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1141
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 1142
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    :cond_0
    return-void
.end method

.method public static Greater(II)V
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1057
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1058
    const-string v0, "Assertion failed: \'%s\' > \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    :cond_0
    return-void
.end method

.method public static Greater(IILjava/lang/String;)V
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1063
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1064
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    :cond_0
    return-void
.end method

.method public static Greater(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1075
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1076
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1077
    :cond_0
    return-void
.end method

.method public static Greater(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1081
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1082
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    :cond_0
    return-void
.end method

.method public static Greater(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1087
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1088
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    :cond_0
    return-void
.end method

.method public static varargs Greater(IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1069
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1070
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    :cond_0
    return-void
.end method

.method public static Greater(JJ)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1093
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 1094
    const-string v0, "Assertion failed: \'%s\' > \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    :cond_0
    return-void
.end method

.method public static Greater(JJLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1099
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 1100
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    :cond_0
    return-void
.end method

.method public static Greater(JJLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1111
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 1112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    :cond_0
    return-void
.end method

.method public static Greater(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1117
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 1118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    :cond_0
    return-void
.end method

.method public static Greater(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1123
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 1124
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    :cond_0
    return-void
.end method

.method public static varargs Greater(JJLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1105
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 1106
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    :cond_0
    return-void
.end method

.method public static Greater(SS)V
    .locals 4
    .param p0, "a"    # S
    .param p1, "b"    # S

    .prologue
    .line 985
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 986
    const-string v0, "Assertion failed: \'%s\' > \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    :cond_0
    return-void
.end method

.method public static Greater(SSLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 991
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 992
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    :cond_0
    return-void
.end method

.method public static Greater(SSLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1003
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1004
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    :cond_0
    return-void
.end method

.method public static Greater(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1009
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1010
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    :cond_0
    return-void
.end method

.method public static Greater(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1015
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1016
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    :cond_0
    return-void
.end method

.method public static varargs Greater(SSLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 997
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 998
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(BB)V
    .locals 4
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 1201
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1202
    const-string v0, "Assertion failed: \'%s\' >= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(BBLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1207
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1208
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(BBLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1219
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1220
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1225
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1226
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1227
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1231
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1232
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    :cond_0
    return-void
.end method

.method public static varargs GreaterOrEqual(BBLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1213
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1214
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(CC)V
    .locals 4
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 1273
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1274
    const-string v0, "Assertion failed: \'%s\' >= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(CCLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1279
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1280
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(CCLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1291
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1292
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1293
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1297
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1298
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1299
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1303
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1304
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    :cond_0
    return-void
.end method

.method public static varargs GreaterOrEqual(CCLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1285
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1286
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1287
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(DD)V
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1417
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 1418
    const-string v0, "Assertion failed: \'%s\' >= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1419
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(DDLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1423
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 1424
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(DDLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1435
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 1436
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1437
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1441
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 1442
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1443
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1447
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 1448
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1449
    :cond_0
    return-void
.end method

.method public static varargs GreaterOrEqual(DDLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1429
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 1430
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1431
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(FF)V
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1381
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 1382
    const-string v0, "Assertion failed: \'%s\' >= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1383
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(FFLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1387
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 1388
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1389
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(FFLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1399
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 1400
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1405
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 1406
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1407
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1411
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 1412
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1413
    :cond_0
    return-void
.end method

.method public static varargs GreaterOrEqual(FFLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1393
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 1394
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1395
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(II)V
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1309
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1310
    const-string v0, "Assertion failed: \'%s\' >= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1311
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(IILjava/lang/String;)V
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1315
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1316
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1327
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1328
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1333
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1334
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1335
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1339
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1340
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1341
    :cond_0
    return-void
.end method

.method public static varargs GreaterOrEqual(IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1321
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1322
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1323
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(JJ)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1345
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 1346
    const-string v0, "Assertion failed: \'%s\' >= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(JJLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1351
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 1352
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(JJLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1363
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 1364
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1365
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1369
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 1370
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1371
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1375
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 1376
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1377
    :cond_0
    return-void
.end method

.method public static varargs GreaterOrEqual(JJLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1357
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 1358
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1359
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(SS)V
    .locals 4
    .param p0, "a"    # S
    .param p1, "b"    # S

    .prologue
    .line 1237
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1238
    const-string v0, "Assertion failed: \'%s\' >= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(SSLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1243
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1244
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1245
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(SSLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1255
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1256
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1257
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1261
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1262
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    :cond_0
    return-void
.end method

.method public static GreaterOrEqual(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1267
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1268
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    :cond_0
    return-void
.end method

.method public static varargs GreaterOrEqual(SSLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1249
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1250
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2189
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    const-string v0, "Assertion failed: String is not empty \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2191
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2196
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2197
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2198
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 2210
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2211
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2212
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 2217
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2218
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2219
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 2224
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2225
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2226
    :cond_0
    return-void
.end method

.method public static varargs IsEmpty(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2203
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2204
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2205
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2273
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2274
    const-string v0, "Assertion failed: collection is null or not empty \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2275
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2281
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2282
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2283
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2295
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2297
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2302
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2303
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2304
    :cond_0
    return-void
.end method

.method public static IsEmpty(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2309
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2310
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2311
    :cond_0
    return-void
.end method

.method public static varargs IsEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2288
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2289
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2290
    :cond_0
    return-void
.end method

.method public static IsFalse(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 71
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 72
    const-string v0, "Assertion failed: \'false\' expected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static IsFalse(ZLjava/lang/String;)V
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static IsFalse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 89
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static IsFalse(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 95
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static IsFalse(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 101
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static varargs IsFalse(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 83
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 84
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static IsInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2106
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2107
    :cond_0
    const-string v1, "Assertion failed: expected type of \'%s\' but was \'%s\'"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2108
    :cond_1
    return-void

    .line 2107
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2113
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2114
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2115
    :cond_1
    return-void
.end method

.method public static IsInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2127
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2129
    :cond_1
    return-void
.end method

.method public static IsInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2134
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2135
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2136
    :cond_1
    return-void
.end method

.method public static IsInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2141
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2142
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2143
    :cond_1
    return-void
.end method

.method public static varargs IsInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2120
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2121
    :cond_0
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2122
    :cond_1
    return-void
.end method

.method public static IsNotEmpty(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2231
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    const-string v0, "Assertion failed: String is null or empty \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2233
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2238
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2239
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2240
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 2252
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2253
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2254
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 2259
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2261
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 2266
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2268
    :cond_0
    return-void
.end method

.method public static varargs IsNotEmpty(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2245
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2247
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2316
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2317
    const-string v0, "Assertion failed: collection is null or empty \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2318
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2323
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2324
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2325
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2337
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2338
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2339
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2344
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2345
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2346
    :cond_0
    return-void
.end method

.method public static IsNotEmpty(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2351
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2353
    :cond_0
    return-void
.end method

.method public static varargs IsNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2330
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2332
    :cond_0
    return-void
.end method

.method public static IsNotInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2148
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    const-string v1, "Assertion failed: Object \'%s\' is subtype of \'%s\'"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2150
    :cond_0
    return-void

    .line 2149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsNotInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2155
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2156
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2157
    :cond_0
    return-void
.end method

.method public static IsNotInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2169
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2171
    :cond_0
    return-void
.end method

.method public static IsNotInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2176
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2177
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2178
    :cond_0
    return-void
.end method

.method public static IsNotInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2183
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2185
    :cond_0
    return-void
.end method

.method public static varargs IsNotInstanceOfType(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2162
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2163
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    :cond_0
    return-void
.end method

.method public static IsNotNull(Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 144
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 145
    const-string v0, "Assertion failed: Object is \'null\'"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method

.method public static IsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    return-void
.end method

.method public static IsNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 178
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_0
    return-void
.end method

.method public static IsNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 185
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_0
    return-void
.end method

.method public static IsNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 192
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_0
    return-void
.end method

.method public static varargs IsNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 158
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 159
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method

.method public static IsNotNullElement(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    sget-boolean v3, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v3, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, "t":Ljava/lang/Object;
    const-string v3, "Element at %s is null"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lspacemadness/com/lunarconsole/debug/Assert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lspacemadness/com/lunarconsole/debug/Assert;->IsNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 171
    goto :goto_0

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static IsNull(Ljava/lang/Object;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 107
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 108
    const-string v0, "Assertion failed: expected \'null\' but was \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static IsNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-void
.end method

.method public static IsNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 125
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method

.method public static IsNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 131
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static IsNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 137
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_0
    return-void
.end method

.method public static varargs IsNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 119
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 120
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static IsTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 35
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 36
    const-string v0, "Assertion failed: \'true\' expected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static IsTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static IsTrue(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 53
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static IsTrue(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 59
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static IsTrue(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 65
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static varargs IsTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 47
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 48
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static Less(BB)V
    .locals 4
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 1453
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1454
    const-string v0, "Assertion failed: \'%s\' < \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    :cond_0
    return-void
.end method

.method public static Less(BBLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1459
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1460
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1461
    :cond_0
    return-void
.end method

.method public static Less(BBLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1471
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1472
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1473
    :cond_0
    return-void
.end method

.method public static Less(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1477
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1478
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1479
    :cond_0
    return-void
.end method

.method public static Less(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1483
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1484
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1485
    :cond_0
    return-void
.end method

.method public static varargs Less(BBLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1465
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1466
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1467
    :cond_0
    return-void
.end method

.method public static Less(CC)V
    .locals 4
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 1525
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1526
    const-string v0, "Assertion failed: \'%s\' < \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    :cond_0
    return-void
.end method

.method public static Less(CCLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1531
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1532
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1533
    :cond_0
    return-void
.end method

.method public static Less(CCLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1543
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1544
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1545
    :cond_0
    return-void
.end method

.method public static Less(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1549
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1550
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1551
    :cond_0
    return-void
.end method

.method public static Less(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1555
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1556
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1557
    :cond_0
    return-void
.end method

.method public static varargs Less(CCLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1537
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1538
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1539
    :cond_0
    return-void
.end method

.method public static Less(DD)V
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1669
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 1670
    const-string v0, "Assertion failed: \'%s\' < \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1671
    :cond_0
    return-void
.end method

.method public static Less(DDLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1675
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 1676
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1677
    :cond_0
    return-void
.end method

.method public static Less(DDLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1687
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 1688
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1689
    :cond_0
    return-void
.end method

.method public static Less(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1693
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 1694
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1695
    :cond_0
    return-void
.end method

.method public static Less(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1699
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 1700
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1701
    :cond_0
    return-void
.end method

.method public static varargs Less(DDLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1681
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 1682
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1683
    :cond_0
    return-void
.end method

.method public static Less(FF)V
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1633
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 1634
    const-string v0, "Assertion failed: \'%s\' < \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    :cond_0
    return-void
.end method

.method public static Less(FFLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1639
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 1640
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1641
    :cond_0
    return-void
.end method

.method public static Less(FFLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1651
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 1652
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1653
    :cond_0
    return-void
.end method

.method public static Less(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1657
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 1658
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1659
    :cond_0
    return-void
.end method

.method public static Less(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1663
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 1664
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1665
    :cond_0
    return-void
.end method

.method public static varargs Less(FFLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1645
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 1646
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    :cond_0
    return-void
.end method

.method public static Less(II)V
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1561
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1562
    const-string v0, "Assertion failed: \'%s\' < \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1563
    :cond_0
    return-void
.end method

.method public static Less(IILjava/lang/String;)V
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1567
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1568
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1569
    :cond_0
    return-void
.end method

.method public static Less(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1579
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1580
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1581
    :cond_0
    return-void
.end method

.method public static Less(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1585
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1586
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    :cond_0
    return-void
.end method

.method public static Less(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1591
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1592
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1593
    :cond_0
    return-void
.end method

.method public static varargs Less(IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1573
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1574
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1575
    :cond_0
    return-void
.end method

.method public static Less(JJ)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1597
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 1598
    const-string v0, "Assertion failed: \'%s\' < \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    :cond_0
    return-void
.end method

.method public static Less(JJLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1603
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 1604
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1605
    :cond_0
    return-void
.end method

.method public static Less(JJLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1615
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 1616
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1617
    :cond_0
    return-void
.end method

.method public static Less(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1621
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 1622
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1623
    :cond_0
    return-void
.end method

.method public static Less(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1627
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 1628
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    :cond_0
    return-void
.end method

.method public static varargs Less(JJLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1609
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 1610
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1611
    :cond_0
    return-void
.end method

.method public static Less(SS)V
    .locals 4
    .param p0, "a"    # S
    .param p1, "b"    # S

    .prologue
    .line 1489
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1490
    const-string v0, "Assertion failed: \'%s\' < \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1491
    :cond_0
    return-void
.end method

.method public static Less(SSLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1495
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1496
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1497
    :cond_0
    return-void
.end method

.method public static Less(SSLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1507
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1508
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    :cond_0
    return-void
.end method

.method public static Less(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1513
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1514
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1515
    :cond_0
    return-void
.end method

.method public static Less(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1519
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1520
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1521
    :cond_0
    return-void
.end method

.method public static varargs Less(SSLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1501
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-lt p0, p1, :cond_0

    .line 1502
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1503
    :cond_0
    return-void
.end method

.method public static LessOrEqual(BB)V
    .locals 4
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 1705
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1706
    const-string v0, "Assertion failed: \'%s\' <= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    :cond_0
    return-void
.end method

.method public static LessOrEqual(BBLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1711
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1712
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1713
    :cond_0
    return-void
.end method

.method public static LessOrEqual(BBLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1723
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1724
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1725
    :cond_0
    return-void
.end method

.method public static LessOrEqual(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1729
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1730
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1731
    :cond_0
    return-void
.end method

.method public static LessOrEqual(BBLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1735
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1736
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1737
    :cond_0
    return-void
.end method

.method public static varargs LessOrEqual(BBLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1717
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1718
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1719
    :cond_0
    return-void
.end method

.method public static LessOrEqual(CC)V
    .locals 4
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 1777
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1778
    const-string v0, "Assertion failed: \'%s\' <= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    :cond_0
    return-void
.end method

.method public static LessOrEqual(CCLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1783
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1784
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1785
    :cond_0
    return-void
.end method

.method public static LessOrEqual(CCLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1795
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1796
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1797
    :cond_0
    return-void
.end method

.method public static LessOrEqual(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1801
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1802
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    :cond_0
    return-void
.end method

.method public static LessOrEqual(CCLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1807
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1808
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1809
    :cond_0
    return-void
.end method

.method public static varargs LessOrEqual(CCLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1789
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1790
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1791
    :cond_0
    return-void
.end method

.method public static LessOrEqual(DD)V
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1921
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 1922
    const-string v0, "Assertion failed: \'%s\' <= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1923
    :cond_0
    return-void
.end method

.method public static LessOrEqual(DDLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1927
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 1928
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1929
    :cond_0
    return-void
.end method

.method public static LessOrEqual(DDLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1939
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 1940
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1941
    :cond_0
    return-void
.end method

.method public static LessOrEqual(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1945
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 1946
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1947
    :cond_0
    return-void
.end method

.method public static LessOrEqual(DDLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1951
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 1952
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1953
    :cond_0
    return-void
.end method

.method public static varargs LessOrEqual(DDLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1933
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 1934
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1935
    :cond_0
    return-void
.end method

.method public static LessOrEqual(FF)V
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1885
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 1886
    const-string v0, "Assertion failed: \'%s\' <= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1887
    :cond_0
    return-void
.end method

.method public static LessOrEqual(FFLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1891
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 1892
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1893
    :cond_0
    return-void
.end method

.method public static LessOrEqual(FFLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1903
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 1904
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1905
    :cond_0
    return-void
.end method

.method public static LessOrEqual(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1909
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 1910
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1911
    :cond_0
    return-void
.end method

.method public static LessOrEqual(FFLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1915
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 1916
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1917
    :cond_0
    return-void
.end method

.method public static varargs LessOrEqual(FFLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1897
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 1898
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1899
    :cond_0
    return-void
.end method

.method public static LessOrEqual(II)V
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1813
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1814
    const-string v0, "Assertion failed: \'%s\' <= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1815
    :cond_0
    return-void
.end method

.method public static LessOrEqual(IILjava/lang/String;)V
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1819
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1820
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1821
    :cond_0
    return-void
.end method

.method public static LessOrEqual(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1831
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1832
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1833
    :cond_0
    return-void
.end method

.method public static LessOrEqual(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1837
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1838
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1839
    :cond_0
    return-void
.end method

.method public static LessOrEqual(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1843
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1844
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1845
    :cond_0
    return-void
.end method

.method public static varargs LessOrEqual(IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1825
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1826
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1827
    :cond_0
    return-void
.end method

.method public static LessOrEqual(JJ)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1849
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 1850
    const-string v0, "Assertion failed: \'%s\' <= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1851
    :cond_0
    return-void
.end method

.method public static LessOrEqual(JJLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1855
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 1856
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1857
    :cond_0
    return-void
.end method

.method public static LessOrEqual(JJLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1867
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 1868
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1869
    :cond_0
    return-void
.end method

.method public static LessOrEqual(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1873
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 1874
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1875
    :cond_0
    return-void
.end method

.method public static LessOrEqual(JJLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "arg0"    # Ljava/lang/Object;
    .param p6, "arg1"    # Ljava/lang/Object;
    .param p7, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1879
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 1880
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p7, v0, v1

    invoke-static {p4, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1881
    :cond_0
    return-void
.end method

.method public static varargs LessOrEqual(JJLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1861
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 1862
    invoke-static {p4, p5}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1863
    :cond_0
    return-void
.end method

.method public static LessOrEqual(SS)V
    .locals 4
    .param p0, "a"    # S
    .param p1, "b"    # S

    .prologue
    .line 1741
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1742
    const-string v0, "Assertion failed: \'%s\' <= \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1743
    :cond_0
    return-void
.end method

.method public static LessOrEqual(SSLjava/lang/String;)V
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1747
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1748
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1749
    :cond_0
    return-void
.end method

.method public static LessOrEqual(SSLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1759
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1760
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1761
    :cond_0
    return-void
.end method

.method public static LessOrEqual(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1765
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1766
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    :cond_0
    return-void
.end method

.method public static LessOrEqual(SSLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1771
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1772
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1773
    :cond_0
    return-void
.end method

.method public static varargs LessOrEqual(SSLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1753
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-le p0, p1, :cond_0

    .line 1754
    invoke-static {p2, p3}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1755
    :cond_0
    return-void
.end method

.method public static NotContains(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "expected":Ljava/lang/Object;, "TT;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v2, 0x0

    .line 2053
    sget-boolean v0, Lspacemadness/com/lunarconsole/debug/Assert;->IsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    if-nez p1, :cond_1

    .line 2056
    const-string v0, "Assertion failed: collection is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    const-string v0, "Assertion failed: collection contains the item %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Assert;->AssertHelper(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 2376
    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
