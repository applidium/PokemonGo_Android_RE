.class public final Lrx/functions/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromAction(Lrx/functions/Action0;)Lrx/functions/FuncN;
    .locals 1
    .param p0, "f"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Lrx/functions/Functions$11;

    invoke-direct {v0, p0}, Lrx/functions/Functions$11;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action1;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT0;>;)",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "f":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT0;>;"
    new-instance v0, Lrx/functions/Functions$12;

    invoke-direct {v0, p0}, Lrx/functions/Functions$12;-><init>(Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action2;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<-TT0;-TT1;>;)",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "f":Lrx/functions/Action2;, "Lrx/functions/Action2<-TT0;-TT1;>;"
    new-instance v0, Lrx/functions/Functions$13;

    invoke-direct {v0, p0}, Lrx/functions/Functions$13;-><init>(Lrx/functions/Action2;)V

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action3;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3",
            "<-TT0;-TT1;-TT2;>;)",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "f":Lrx/functions/Action3;, "Lrx/functions/Action3<-TT0;-TT1;-TT2;>;"
    new-instance v0, Lrx/functions/Functions$14;

    invoke-direct {v0, p0}, Lrx/functions/Functions$14;-><init>(Lrx/functions/Action3;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func0;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "f":Lrx/functions/Func0;, "Lrx/functions/Func0<+TR;>;"
    new-instance v0, Lrx/functions/Functions$1;

    invoke-direct {v0, p0}, Lrx/functions/Functions$1;-><init>(Lrx/functions/Func0;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func1;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT0;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT0;+TR;>;"
    new-instance v0, Lrx/functions/Functions$2;

    invoke-direct {v0, p0}, Lrx/functions/Functions$2;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func2",
            "<-TT0;-TT1;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT0;-TT1;+TR;>;"
    new-instance v0, Lrx/functions/Functions$3;

    invoke-direct {v0, p0}, Lrx/functions/Functions$3;-><init>(Lrx/functions/Func2;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func3",
            "<-TT0;-TT1;-TT2;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "f":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT0;-TT1;-TT2;+TR;>;"
    new-instance v0, Lrx/functions/Functions$4;

    invoke-direct {v0, p0}, Lrx/functions/Functions$4;-><init>(Lrx/functions/Func3;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func4",
            "<-TT0;-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "f":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT0;-TT1;-TT2;-TT3;+TR;>;"
    new-instance v0, Lrx/functions/Functions$5;

    invoke-direct {v0, p0}, Lrx/functions/Functions$5;-><init>(Lrx/functions/Func4;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func5",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "f":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;"
    new-instance v0, Lrx/functions/Functions$6;

    invoke-direct {v0, p0}, Lrx/functions/Functions$6;-><init>(Lrx/functions/Func5;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func6",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "f":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    new-instance v0, Lrx/functions/Functions$7;

    invoke-direct {v0, p0}, Lrx/functions/Functions$7;-><init>(Lrx/functions/Func6;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func7",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "f":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    new-instance v0, Lrx/functions/Functions$8;

    invoke-direct {v0, p0}, Lrx/functions/Functions$8;-><init>(Lrx/functions/Func7;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func8",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "f":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    new-instance v0, Lrx/functions/Functions$9;

    invoke-direct {v0, p0}, Lrx/functions/Functions$9;-><init>(Lrx/functions/Func8;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func9",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "f":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    new-instance v0, Lrx/functions/Functions$10;

    invoke-direct {v0, p0}, Lrx/functions/Functions$10;-><init>(Lrx/functions/Func9;)V

    return-object v0
.end method
