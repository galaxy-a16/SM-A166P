.class public final Lcom/android/server/notification/NotificationHistoryFilter$Builder;
.super Ljava/lang/Object;
.source "NotificationHistoryFilter.java"


# instance fields
.field public mChannel:Ljava/lang/String;

.field public mNotificationCount:I

.field public mPackage:Ljava/lang/String;

.field public mSbnKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mSbnKey:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mNotificationCount:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/notification/NotificationHistoryFilter;
    .locals 2

    new-instance v0, Lcom/android/server/notification/NotificationHistoryFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;-><init>(Lcom/android/server/notification/NotificationHistoryFilter-IA;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;->-$$Nest$fputmPackage(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mChannel:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;->-$$Nest$fputmChannel(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mSbnKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;->-$$Nest$fputmSbnKey(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mNotificationCount:I

    invoke-static {v0, p0}, Lcom/android/server/notification/NotificationHistoryFilter;->-$$Nest$fputmNotificationCount(Lcom/android/server/notification/NotificationHistoryFilter;I)V

    return-object v0
.end method

.method public setMaxNotifications(I)Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mNotificationCount:I

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setSbnKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mSbnKey:Ljava/lang/String;

    return-object p0
.end method
