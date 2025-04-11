.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerServiceInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$0:Lcom/android/server/pm/PackageManagerServiceInjector;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$0:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$i9vBlO7oLpDqV1rPM7b3wEUwu4U(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    move-result-object p0

    return-object p0
.end method
