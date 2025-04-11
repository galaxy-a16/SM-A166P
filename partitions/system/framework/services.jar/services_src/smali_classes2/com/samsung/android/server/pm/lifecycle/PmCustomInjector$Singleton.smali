.class public Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;
.super Ljava/lang/Object;
.source "PmCustomInjector.java"


# instance fields
.field public volatile mInstance:Ljava/lang/Object;

.field public final mProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->mInstance:Ljava/lang/Object;

    .line 127
    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->mProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->mProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->mInstance:Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->mInstance:Ljava/lang/Object;

    return-object p0
.end method
