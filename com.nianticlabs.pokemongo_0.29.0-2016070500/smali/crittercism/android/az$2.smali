.class final Lcrittercism/android/az$2;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/az;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/az;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcrittercism/android/az;


# direct methods
.method constructor <init>(Lcrittercism/android/az;Lcrittercism/android/az;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1331
    iput-object p1, p0, Lcrittercism/android/az$2;->c:Lcrittercism/android/az;

    iput-object p2, p0, Lcrittercism/android/az$2;->a:Lcrittercism/android/az;

    iput-object p3, p0, Lcrittercism/android/az$2;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcrittercism/android/az$2;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    .line 1334
    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    iget-object v0, p0, Lcrittercism/android/az$2;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->x:Lcrittercism/android/dv;

    iget-object v1, p0, Lcrittercism/android/az$2;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcrittercism/android/dv;->a(Lorg/json/JSONObject;)V

    .line 1341
    iget-object v0, p0, Lcrittercism/android/az$2;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->x:Lcrittercism/android/dv;

    invoke-virtual {v0}, Lcrittercism/android/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcrittercism/android/az$2;->a:Lcrittercism/android/az;

    invoke-virtual {v0}, Lcrittercism/android/az;->E()V

    goto :goto_0
.end method
