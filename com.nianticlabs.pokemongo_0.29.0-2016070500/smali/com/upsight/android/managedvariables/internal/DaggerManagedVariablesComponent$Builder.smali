.class public final Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerManagedVariablesComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

.field private managedVariablesModule:Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;

.field private resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

.field private userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

.field private uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/ResourceModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    return-object v0
.end method


# virtual methods
.method public baseManagedVariablesModule(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .locals 2
    .param p1, "baseManagedVariablesModule"    # Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseManagedVariablesModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .line 144
    return-object p0
.end method

.method public build()Lcom/upsight/android/managedvariables/internal/ManagedVariablesComponent;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->managedVariablesModule:Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->managedVariablesModule:Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/upsight/android/managedvariables/internal/ResourceModule;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/ResourceModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    if-nez v0, :cond_3

    .line 99
    new-instance v0, Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    if-nez v0, :cond_4

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "baseManagedVariablesModule must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_4
    new-instance v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;-><init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;)V

    return-object v0
.end method

.method public managedVariablesModule(Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .locals 2
    .param p1, "managedVariablesModule"    # Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "managedVariablesModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->managedVariablesModule:Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;

    .line 112
    return-object p0
.end method

.method public resourceModule(Lcom/upsight/android/managedvariables/internal/ResourceModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .locals 2
    .param p1, "resourceModule"    # Lcom/upsight/android/managedvariables/internal/ResourceModule;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resourceModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    .line 120
    return-object p0
.end method

.method public userExperienceModule(Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .locals 2
    .param p1, "userExperienceModule"    # Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "userExperienceModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    .line 136
    return-object p0
.end method

.method public uxmModule(Lcom/upsight/android/managedvariables/internal/type/UxmModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .locals 2
    .param p1, "uxmModule"    # Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uxmModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .line 128
    return-object p0
.end method
