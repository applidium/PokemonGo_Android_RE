.class final Lcom/unity3d/player/ReflectionHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/ReflectionHelper$a;
    }
.end annotation


# static fields
.field protected static LOG:Z

.field protected static final LOGV:Z

.field private static a:[Lcom/unity3d/player/ReflectionHelper$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/ReflectionHelper;->LOG:Z

    const/16 v0, 0x1000

    new-array v0, v0, [Lcom/unity3d/player/ReflectionHelper$a;

    sput-object v0, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F
    .locals 6

    const/4 v1, 0x0

    array-length v0, p2

    if-nez v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    array-length v2, p2

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    array-length v0, p1

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    array-length v4, p1

    move v2, v1

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v5, p1, v1

    add-int/lit8 v3, v2, 0x1

    aget-object v2, p2, v2

    invoke-static {v5, v2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v2

    mul-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    :cond_3
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    invoke-static {p0, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[I)Ljava/lang/Class;
    .locals 4

    const/4 v2, 0x0

    :cond_0
    aget v0, p1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_b

    aget v0, p1, v2

    add-int/lit8 v1, v0, 0x1

    aput v1, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3b

    aget v1, p1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    aget v1, p1, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v2

    const/16 v0, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const/16 v1, 0x49

    if-ne v0, v1, :cond_3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    const/16 v1, 0x46

    if-ne v0, v1, :cond_4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    const/16 v1, 0x56

    if-ne v0, v1, :cond_5

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_5
    const/16 v1, 0x42

    if-ne v0, v1, :cond_6

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_6
    const/16 v1, 0x53

    if-ne v0, v1, :cond_7

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_7
    const/16 v1, 0x4a

    if-ne v0, v1, :cond_8

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_8
    const/16 v1, 0x44

    if-ne v0, v1, :cond_9

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_9
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_a

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;[I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_a
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "! parseType; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V

    :cond_b
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyInvoke(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyFinalize(I)V

    return-void
.end method

.method private static a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V
    .locals 3

    iput-object p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    sget-object v0, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    invoke-virtual {p0}, Lcom/unity3d/player/ReflectionHelper$a;->hashCode()I

    move-result v1

    sget-object v2, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aput-object p0, v0, v1

    return-void
.end method

.method private static a(Lcom/unity3d/player/ReflectionHelper$a;)Z
    .locals 3

    sget-object v0, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    invoke-virtual {p0}, Lcom/unity3d/player/ReflectionHelper$a;->hashCode()I

    move-result v1

    sget-object v2, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/ReflectionHelper$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    iput-object v0, p0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/Class;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    aget v3, v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-static {p0, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;[I)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method protected static getConstructorID(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 10

    const/4 v3, 0x0

    new-instance v5, Lcom/unity3d/player/ReflectionHelper$a;

    const-string v0, ""

    invoke-direct {v5, p0, v0, p1}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NoSuchMethodError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<init>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v2, v7, v4

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {v0, v9, v6}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    cmpl-float v9, v0, v1

    if-lez v9, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    move-object v1, v2

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v2, v3

    :cond_2
    invoke-static {v5, v2}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method protected static getFieldID(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 11

    const/4 v1, 0x0

    new-instance v5, Lcom/unity3d/player/ReflectionHelper$a;

    invoke-direct {v5, p0, p1, p2}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Field;

    :goto_0
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/NoSuchFieldError;

    const-string v2, "no %s field with name=\'%s\' signature=\'%s\' in class L%s;"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    const-string v0, "non-static"

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v0, 0x2

    aput-object p2, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v6

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_2
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    const/4 v2, 0x0

    move v4, v2

    move-object v3, v0

    :goto_3
    if-ge v4, v8, :cond_6

    aget-object v2, v7, v4

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-ne p3, v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v6}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    cmpl-float v9, v0, v1

    if-lez v9, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    move-object v1, v2

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_3

    :cond_1
    move v1, v0

    move-object v0, v2

    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {v5, v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "static"

    goto/16 :goto_1

    :cond_4
    return-object v0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_4

    :cond_6
    move-object v0, v3

    goto :goto_5
.end method

.method protected static getMethodID(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;
    .locals 11

    const/4 v1, 0x0

    new-instance v5, Lcom/unity3d/player/ReflectionHelper$a;

    invoke-direct {v5, p0, p1, p2}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    :goto_0
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/NoSuchMethodError;

    const-string v2, "no %s method with name=\'%s\' signature=\'%s\' in class L%s;"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    const-string v0, "non-static"

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v0, 0x2

    aput-object p2, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v6

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_2
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v2, 0x0

    move v4, v2

    move-object v3, v0

    :goto_3
    if-ge v4, v8, :cond_6

    aget-object v2, v7, v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-ne p3, v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {v0, v9, v6}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    cmpl-float v9, v0, v1

    if-lez v9, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    move-object v1, v2

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_3

    :cond_1
    move v1, v0

    move-object v0, v2

    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {v5, v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "static"

    goto/16 :goto_1

    :cond_4
    return-object v0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_4

    :cond_6
    move-object v0, v3

    goto :goto_5
.end method

.method private static native nativeProxyFinalize(I)V
.end method

.method private static native nativeProxyInvoke(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected static newProxyInstance(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/unity3d/player/ReflectionHelper;->newProxyInstance(I[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static newProxyInstance(I[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/ReflectionHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/ReflectionHelper$1;-><init>(I[Ljava/lang/Class;)V

    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
