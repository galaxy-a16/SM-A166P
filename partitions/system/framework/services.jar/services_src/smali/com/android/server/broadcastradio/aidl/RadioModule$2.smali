.class public Lcom/android/server/broadcastradio/aidl/RadioModule$2;
.super Landroid/hardware/broadcastradio/IAnnouncementListener$Stub;
.source "RadioModule.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

.field public final synthetic val$listener:Landroid/hardware/radio/IAnnouncementListener;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/IAnnouncementListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "3c864ddf392d28cfbf95849bedf0b753b81cc013"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onListUpdated([Landroid/hardware/broadcastradio/Announcement;)V
    .locals 3

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 474
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 475
    aget-object v2, p1, v1

    .line 476
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->announcementFromHalAnnouncement(Landroid/hardware/broadcastradio/Announcement;)Landroid/hardware/radio/Announcement;

    move-result-object v2

    .line 475
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {p0, v0}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V

    return-void
.end method
