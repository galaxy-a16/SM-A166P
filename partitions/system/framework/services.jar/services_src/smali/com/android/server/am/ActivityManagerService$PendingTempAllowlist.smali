.class public final Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final callingUid:I

.field public final duration:J

.field public final reasonCode:I

.field public final tag:Ljava/lang/String;

.field public final targetUid:I

.field public final type:I


# direct methods
.method public constructor <init>(IJILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    iput p7, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10900000003L

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10500000004L

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
