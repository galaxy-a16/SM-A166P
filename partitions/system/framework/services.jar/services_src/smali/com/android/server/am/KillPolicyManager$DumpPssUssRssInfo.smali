.class public Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public avgPss:I

.field public avgRss:I

.field public avgUss:I

.field public maxPss:I

.field public maxRss:I

.field public maxUss:I

.field public memoryFactorIndex:I

.field public minPss:I

.field public minRss:I

.field public minUss:I

.field public sampleCount:I

.field public screenIndex:I

.field public stateIndex:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    .line 2981
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
