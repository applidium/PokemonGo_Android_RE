.class final Lcom/unity3d/player/ReflectionHelper$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public volatile a:Ljava/lang/reflect/Member;

.field private final b:Ljava/lang/Class;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/unity3d/player/ReflectionHelper$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/unity3d/player/ReflectionHelper$a;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/player/ReflectionHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/unity3d/player/ReflectionHelper$a;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/unity3d/player/ReflectionHelper$a;

    iget v2, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:I

    iget v3, p1, Lcom/unity3d/player/ReflectionHelper$a;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/player/ReflectionHelper$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unity3d/player/ReflectionHelper$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/player/ReflectionHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unity3d/player/ReflectionHelper$a;->b:Ljava/lang/Class;

    iget-object v3, p1, Lcom/unity3d/player/ReflectionHelper$a;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:I

    return v0
.end method
