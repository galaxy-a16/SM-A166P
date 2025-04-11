.class public final synthetic Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->$r8$lambda$MPzu2HZu1vFZUJr6j4hYgQamMy0(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V

    return-void
.end method
