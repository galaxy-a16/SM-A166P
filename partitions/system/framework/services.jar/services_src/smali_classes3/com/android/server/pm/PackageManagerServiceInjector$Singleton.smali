.class Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# instance fields
.field public volatile mInstance:Ljava/lang/Object;

.field public final mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    return-object p0
.end method
