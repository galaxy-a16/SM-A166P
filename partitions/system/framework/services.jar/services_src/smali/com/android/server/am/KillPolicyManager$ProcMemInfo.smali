.class public Lcom/android/server/am/KillPolicyManager$ProcMemInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public activeFile:I

.field public cached:I

.field public inactiveFile:I

.field public kReclaimable:I

.field public kgslReclaimed:I

.field public kgslSharedMem:I

.field public kgslShmemUsage:I

.field public memAvailable:I

.field public memFree:I

.field public memTotal:I

.field public rbinCached:I

.field public rbinFree:I

.field public sReclaimable:I

.field public sUnreclaim:I

.field public swapFree:I

.field public system:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public vmallocUsed:I

.field public zram:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
