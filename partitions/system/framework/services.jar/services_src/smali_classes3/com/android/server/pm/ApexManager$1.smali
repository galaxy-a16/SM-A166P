.class public Lcom/android/server/pm/ApexManager$1;
.super Landroid/util/Singleton;
.source "ApexManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/server/pm/ApexManager;
    .locals 1

    .line 85
    invoke-static {}, Landroid/sysprop/ApexProperties;->updatable()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 86
    new-instance p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-direct {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;-><init>()V

    return-object p0

    .line 88
    :cond_0
    new-instance p0, Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;

    invoke-direct {p0}, Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$1;->create()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    return-object p0
.end method
