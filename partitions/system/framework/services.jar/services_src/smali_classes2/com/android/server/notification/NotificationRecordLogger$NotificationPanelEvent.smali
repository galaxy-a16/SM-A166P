.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
.super Ljava/lang/Enum;
.source "NotificationRecordLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

.field public static final enum NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

.field public static final enum NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .locals 2

    .line 348
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    filled-new-array {v0, v1}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 349
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    const/4 v1, 0x0

    const/16 v2, 0x145

    const-string v3, "NOTIFICATION_PANEL_OPEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 351
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    const/4 v1, 0x1

    const/16 v2, 0x146

    const-string v3, "NOTIFICATION_PANEL_CLOSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 348
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 356
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .locals 1

    .line 348
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .locals 1

    .line 348
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 359
    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->mId:I

    return p0
.end method
