.class Landroid/support/v4/text/ICUCompatIcs;
.super Ljava/lang/Object;
.source "ICUCompatIcs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 34
    :try_start_0
    const-string v2, "libcore.icu.ICU"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 36
    const-string v2, "getScript"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 38
    const-string v2, "addLikelySubtags"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    sput-object v6, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 43
    sput-object v6, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 46
    const-string v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "localeStr":Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 80
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 81
    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ICUCompatIcs"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_1
    move-object v3, v2

    .line 92
    goto :goto_0

    .line 87
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "ICUCompatIcs"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 61
    :try_start_0
    sget-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 63
    .local v0, "args":[Ljava/lang/Object;
    sget-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 65
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 73
    goto :goto_0

    .line 69
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 51
    invoke-static {p0}, Landroid/support/v4/text/ICUCompatIcs;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "localeWithSubtags":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 53
    invoke-static {v0}, Landroid/support/v4/text/ICUCompatIcs;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
