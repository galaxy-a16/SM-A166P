.class public final synthetic Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->$r8$lambda$MPyszMY_HF585e-u_pTAz68oykg(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
