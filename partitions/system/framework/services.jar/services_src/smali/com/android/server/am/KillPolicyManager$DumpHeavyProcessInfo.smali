.class public Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

.field public packageName:Ljava/lang/String;

.field public packageVersion:Ljava/lang/String;

.field public processVersion:J

.field public pssUssRssInfo:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
