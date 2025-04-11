.class public final Lcom/android/server/notification/NotificationHistoryFilter;
.super Ljava/lang/Object;
.source "NotificationHistoryFilter.java"


# instance fields
.field public mChannel:Ljava/lang/String;

.field public mNotificationCount:I

.field public mPackage:Ljava/lang/String;

.field public mSbnKey:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fputmChannel(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationCount(Lcom/android/server/notification/NotificationHistoryFilter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPackage(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSbnKey(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationHistoryFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationHistoryFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getSbnKey()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    return-object p0
.end method

.method public isFiltering()Z
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    const v0, 0x7fffffff

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSbnFilter()Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getSbnKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesCountFilter(Landroid/app/NotificationHistory;)Z
    .locals 0

    .line 107
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result p1

    iget p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public matchesPackageAndSbnKeyFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getSbnKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getSbnKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
