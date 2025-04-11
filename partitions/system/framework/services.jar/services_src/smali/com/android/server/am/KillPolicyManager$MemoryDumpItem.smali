.class public Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public mDumpSize:J

.field public mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    iput-object p4, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-void
.end method
