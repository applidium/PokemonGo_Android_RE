.class public final Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerMarketingComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

.field private billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

.field private contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

.field private marketingModule:Lcom/upsight/android/marketing/internal/MarketingModule;

.field private webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/WebViewModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;

    return-object v0
.end method


# virtual methods
.method public baseMarketingModule(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .locals 2
    .param p1, "baseMarketingModule"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseMarketingModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .line 139
    return-object p0
.end method

.method public billboardModule(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .locals 2
    .param p1, "billboardModule"    # Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "billboardModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    .line 115
    return-object p0
.end method

.method public build()Lcom/upsight/android/marketing/internal/MarketingComponent;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->marketingModule:Lcom/upsight/android/marketing/internal/MarketingModule;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/upsight/android/marketing/internal/MarketingModule;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/MarketingModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->marketingModule:Lcom/upsight/android/marketing/internal/MarketingModule;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lcom/upsight/android/marketing/internal/content/ContentModule;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/ContentModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;

    if-nez v0, :cond_3

    .line 94
    new-instance v0, Lcom/upsight/android/marketing/internal/content/WebViewModule;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/WebViewModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    if-nez v0, :cond_4

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "baseMarketingModule must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_4
    new-instance v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;-><init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;)V

    return-object v0
.end method

.method public contentModule(Lcom/upsight/android/marketing/internal/content/ContentModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .locals 2
    .param p1, "contentModule"    # Lcom/upsight/android/marketing/internal/content/ContentModule;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;

    .line 123
    return-object p0
.end method

.method public marketingModule(Lcom/upsight/android/marketing/internal/MarketingModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .locals 2
    .param p1, "marketingModule"    # Lcom/upsight/android/marketing/internal/MarketingModule;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "marketingModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->marketingModule:Lcom/upsight/android/marketing/internal/MarketingModule;

    .line 107
    return-object p0
.end method

.method public webViewModule(Lcom/upsight/android/marketing/internal/content/WebViewModule;)Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .locals 2
    .param p1, "webViewModule"    # Lcom/upsight/android/marketing/internal/content/WebViewModule;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "webViewModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;

    .line 131
    return-object p0
.end method
