.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
.super Ljava/lang/Enum;
.source "NotificationRecordLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 22

    .line 268
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v15, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v16, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v17, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v18, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v19, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v20, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v21, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    filled-new-array/range {v0 .. v21}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 269
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v1, 0x0

    const/16 v2, 0xc5

    const-string v3, "NOTIFICATION_OPEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 271
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v1, 0x1

    const/16 v2, 0xc6

    const-string v3, "NOTIFICATION_CLOSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 273
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v1, 0x2

    const/16 v2, 0x13d

    const-string v3, "NOTIFICATION_SNOOZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 275
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v1, 0x3

    const/16 v2, 0x13f

    const-string v3, "NOTIFICATION_NOT_POSTED_SNOOZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 277
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v1, 0x4

    const/16 v2, 0x140

    const-string v3, "NOTIFICATION_CLICKED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 279
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v1, 0x5

    const/16 v2, 0x141

    const-string v3, "NOTIFICATION_ACTION_CLICKED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 281
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v1, 0x6

    const/16 v2, 0x147

    const-string v3, "NOTIFICATION_DETAIL_OPEN_SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 283
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v1, 0x7

    const/16 v2, 0x148

    const-string v3, "NOTIFICATION_DETAIL_CLOSE_SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 285
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0x8

    const/16 v2, 0x149

    const-string v3, "NOTIFICATION_DETAIL_OPEN_USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 287
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0x9

    const/16 v2, 0x14a

    const-string v3, "NOTIFICATION_DETAIL_CLOSE_USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 289
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0xa

    const/16 v2, 0x14b

    const-string v3, "NOTIFICATION_DIRECT_REPLIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 291
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0xb

    const/16 v2, 0x14c

    const-string v3, "NOTIFICATION_SMART_REPLIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 293
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0xc

    const/16 v2, 0x14d

    const-string v3, "NOTIFICATION_SMART_REPLY_VISIBLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 295
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0xd

    const/16 v2, 0x1c2

    const-string v3, "NOTIFICATION_ACTION_CLICKED_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 297
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0xe

    const/16 v2, 0x1c3

    const-string v3, "NOTIFICATION_ACTION_CLICKED_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 299
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0xf

    const/16 v2, 0x1c4

    const-string v3, "NOTIFICATION_ACTION_CLICKED_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 301
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0x10

    const/16 v2, 0x1c5

    const-string v3, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 303
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0x11

    const/16 v2, 0x1c6

    const-string v3, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 305
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0x12

    const/16 v2, 0x1c7

    const-string v3, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 307
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0x13

    const/16 v2, 0x1c8

    const-string v3, "NOTIFICATION_ASSIST_ACTION_CLICKED_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 309
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0x14

    const/16 v2, 0x1c9

    const-string v3, "NOTIFICATION_ASSIST_ACTION_CLICKED_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 311
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v1, 0x15

    const/16 v2, 0x1ca

    const-string v3, "NOTIFICATION_ASSIST_ACTION_CLICKED_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 268
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 316
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->mId:I

    return-void
.end method

.method public static fromAction(IZZ)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    if-ltz p0, :cond_3

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 337
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object p1

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 338
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/2addr p2, p0

    aget-object p0, p1, p2

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 341
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object p1

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 342
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/2addr p2, p0

    aget-object p0, p1, p2

    return-object p0

    .line 344
    :cond_2
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object p1

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/2addr p2, p0

    aget-object p0, p1, p2

    return-object p0

    .line 334
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object p0
.end method

.method public static fromExpanded(ZZ)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 327
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 329
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_1
    return-object p0
.end method

.method public static fromVisibility(Z)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 0

    if-eqz p0, :cond_0

    .line 323
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    .line 268
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    .line 268
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 319
    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->mId:I

    return p0
.end method
