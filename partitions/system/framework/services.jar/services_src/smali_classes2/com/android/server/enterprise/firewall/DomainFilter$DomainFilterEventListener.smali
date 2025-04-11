.class public Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;
.super Lcom/android/internal/net/IDomainFilterEventListener$Stub;
.source "DomainFilter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    .line 2220
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Lcom/android/internal/net/IDomainFilterEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method


# virtual methods
.method public onDomainFilterReportEvent(IIJLjava/lang/String;)V
    .locals 5

    .line 2225
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0, p2, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mgetPackageFromRunningProcesses(Lcom/android/server/enterprise/firewall/DomainFilter;II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2227
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed to find application which was blocked"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2231
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 2232
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2237
    new-instance p4, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    invoke-direct {p4, p3, p1, p5}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 2239
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmReportCache(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmReportCache(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, p4}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    .line 2246
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmReportCache(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmReportCacheIndex(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v2

    aput-object p4, v1, v2

    .line 2247
    iget-object p4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmReportCacheIndex(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {p4, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fputmReportCacheIndex(Lcom/android/server/enterprise/firewall/DomainFilter;I)V

    .line 2248
    iget-object p4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmReportCacheIndex(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result p4

    if-ne p4, v3, :cond_3

    .line 2249
    iget-object p4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p4, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fputmReportCacheIndex(Lcom/android/server/enterprise/firewall/DomainFilter;I)V

    .line 2252
    :cond_3
    iget-object p4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object p4

    const-string v1, "activity"

    .line 2253
    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager;

    .line 2254
    invoke-virtual {p4, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    .line 2256
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    .line 2257
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

    .line 2258
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

    .line 2259
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2260
    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v2, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    if-eqz p4, :cond_4

    .line 2261
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 2263
    :cond_4
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2265
    :goto_1
    iget-object p4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object p4

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    invoke-virtual {p4, v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2267
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0, p3, p1, p5, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$msaveReportInDatabase(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
