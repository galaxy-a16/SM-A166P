.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ServiceConnection;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Lcom/android/server/am/ForegroundServiceDelegation;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ServiceConnection;Landroid/content/ComponentName;Lcom/android/server/am/ForegroundServiceDelegation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;->f$0:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/ForegroundServiceDelegation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;->f$0:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/ForegroundServiceDelegation;

    invoke-static {v0, v1, p0}, Lcom/android/server/am/ActiveServices;->$r8$lambda$CvJnzmEhL9a9zbGdGBY8EdwpAZo(Landroid/content/ServiceConnection;Landroid/content/ComponentName;Lcom/android/server/am/ForegroundServiceDelegation;)V

    return-void
.end method
