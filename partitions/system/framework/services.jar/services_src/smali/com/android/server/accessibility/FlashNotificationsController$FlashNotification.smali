.class public Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;
.super Ljava/lang/Object;
.source "FlashNotificationsController.java"


# instance fields
.field public mColor:I

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mForceStartScreenFlash:Z

.field public mNotiType:I

.field public final mOffDuration:I

.field public final mOnDuration:I

.field public mRepeat:I

.field public final mTag:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmColor(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForceStartScreenFlash(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotiType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOffDuration(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnDuration(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 808
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 814
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    const-string p2, "alarm"

    .line 817
    iget-object p4, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x3

    if-nez p2, :cond_5

    const-string/jumbo p2, "preview"

    iget-object p5, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 818
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p5, "screen_flash_notification_color_mode"

    const/4 p6, -0x2

    const/4 p7, 0x0

    invoke-static {p2, p5, p7, p6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    .line 823
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->isCameraFlashAvailableForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p5

    .line 824
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->getScreenFlashColorElements(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p6, p7

    goto :goto_1

    :cond_1
    :goto_0
    move p6, p3

    :goto_1
    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 828
    iput p4, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_3

    .line 830
    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_2

    :cond_3
    if-eqz p6, :cond_4

    const/4 p4, 0x2

    .line 832
    iput p4, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_2

    .line 834
    :cond_4
    iput p7, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    :goto_2
    if-ne p2, p3, :cond_6

    if-eqz p6, :cond_6

    .line 838
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x23

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    goto :goto_3

    .line 842
    :cond_5
    iput p4, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    :cond_6
    :goto_3
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/accessibility/FlashNotificationsController$FlashNotification-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 771
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    .line 777
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 778
    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    .line 779
    iput-object p4, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    .line 780
    iput-object p5, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p1, 0x2

    const/4 p3, 0x0

    if-eq p2, p1, :cond_1

    const/4 p4, 0x3

    if-eq p2, p4, :cond_0

    const/16 p2, 0x15e

    .line 797
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    const/16 p2, 0xfa

    .line 798
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    .line 799
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 800
    iput-boolean p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x1388

    .line 790
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    const/16 p1, 0x3e8

    .line 791
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    const/4 p1, 0x1

    .line 792
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 793
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    goto :goto_0

    :cond_1
    const/16 p1, 0x2bc

    .line 784
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    .line 785
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    .line 786
    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 787
    iput-boolean p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/android/server/accessibility/FlashNotificationsController$FlashNotification-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getScreenFlashColorElements(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 893
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_flash_notification_color_apps"

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 897
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x3b

    .line 898
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    const/16 v3, 0x23

    .line 900
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 902
    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isCameraFlashAvailableForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 872
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "camera_flash_notification_app_list"

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 876
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    const-string p1, "all"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x3b

    .line 881
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p0, v2

    .line 883
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public tryLinkToDeath()Z
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez p0, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "FlashNotifController"

    const-string v2, "RemoteException"

    .line 855
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public tryUnlinkToDeath()Z
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez p0, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method
