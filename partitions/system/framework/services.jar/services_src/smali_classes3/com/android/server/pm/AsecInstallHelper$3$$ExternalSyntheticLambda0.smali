.class public final synthetic Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AsecInstallHelper$3;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AsecInstallHelper$3;ZLjava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallHelper$3;

    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallHelper$3;

    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/AsecInstallHelper$3;->$r8$lambda$fGnQv3IX6cP5MyBSoIl4tcjGbPE(Lcom/android/server/pm/AsecInstallHelper$3;ZLjava/util/Set;)V

    return-void
.end method
