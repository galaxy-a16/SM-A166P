.class public Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;
.super Landroid/service/notification/NotificationListenerService;
.source "OngoingNotiPackageFilter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 0

    .line 0
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 0

    .line 0
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->-$$Nest$fgetmActiveNotiMap(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->-$$Nest$fgetmActiveNotiMap(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
