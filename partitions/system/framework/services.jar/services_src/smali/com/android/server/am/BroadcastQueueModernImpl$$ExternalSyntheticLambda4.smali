.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->f$1:Ljava/io/PrintWriter;

    invoke-static {v0, p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->$r8$lambda$NiTzy04OhB0Wpy-vFesL5lyFkIc(Lcom/android/server/am/BroadcastQueueModernImpl;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method
