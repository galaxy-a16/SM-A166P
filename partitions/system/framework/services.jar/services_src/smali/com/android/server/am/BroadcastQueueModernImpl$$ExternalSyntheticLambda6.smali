.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;->f$2:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda6;->f$2:Ljava/io/PrintWriter;

    invoke-static {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->$r8$lambda$8uqC8WMGCNpPQAR3bBYh6ild5AI(Lcom/android/server/am/BroadcastQueueModernImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method
