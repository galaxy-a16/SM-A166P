.class public final synthetic Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallingSession;

.field public final synthetic f$1:Lcom/android/server/pm/InstallRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallingSession;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/InstallRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallingSession;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/InstallRequest;

    invoke-static {v0, p0}, Lcom/android/server/pm/InstallingSession;->$r8$lambda$tqRjKCgCJYNNnnY7Qw5M5BHLup8(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method
