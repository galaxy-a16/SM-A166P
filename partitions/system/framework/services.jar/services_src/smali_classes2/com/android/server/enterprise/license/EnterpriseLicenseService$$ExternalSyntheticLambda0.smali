.class public final synthetic Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->$r8$lambda$CNjT_44eOtEqd4GHdqVbJToM_98(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V

    return-void
.end method
