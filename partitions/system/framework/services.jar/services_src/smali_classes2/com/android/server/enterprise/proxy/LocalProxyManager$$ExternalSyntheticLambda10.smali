.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;->f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;->f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->$r8$lambda$90IO0IOnhhKNOV1nZbwUibY48GE(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V

    return-void
.end method
