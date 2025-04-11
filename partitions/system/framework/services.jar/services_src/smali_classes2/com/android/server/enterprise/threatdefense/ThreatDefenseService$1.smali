.class public Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;
.super Ljava/util/TimerTask;
.source "ThreatDefenseService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-static {v0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$fgetmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    new-instance v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    invoke-direct {v1}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$fputmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-static {v0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$fgetmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->schedule()V

    .line 185
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-static {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$mresetPackageRules(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    return-void
.end method
