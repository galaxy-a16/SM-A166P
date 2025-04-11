.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# instance fields
.field public OFF:I

.field public ON:I

.field public defaultValue:I

.field public key:Ljava/lang/String;

.field public previousValue:I

.field public rawKey:Ljava/lang/String;

.field public tableType:I

.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetrawKey(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .locals 1

    .line 756
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 757
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->ON:I

    const/4 v0, 0x0

    .line 758
    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    .line 763
    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    .line 764
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public getCurrentSettings(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .locals 0

    .line 824
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I

    move-result p1

    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I
    .locals 2

    .line 807
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 815
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    iget p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    goto :goto_0

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    iget p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final isExceptionalCase()Z
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    const-string v1, "any_screen_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object p0

    .line 856
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_corner_action_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .locals 3

    .line 830
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    if-ne p1, v0, :cond_0

    .line 831
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I

    move-result v0

    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    .line 834
    :cond_0
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 839
    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 847
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->isExceptionalCase()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 848
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "This case shouldn\'t be included at ignore list"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 851
    :cond_4
    iget-object p1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 4

    .line 786
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 792
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 788
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_0
    return-void
.end method

.method public setSettingsKey(Ljava/lang/String;)V
    .locals 6

    .line 769
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    const-string v0, "/"

    .line 770
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 772
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "system"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "global"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 773
    :pswitch_0
    iput v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    goto :goto_2

    .line 775
    :pswitch_1
    iput v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x3

    .line 777
    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 782
    :goto_2
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_2
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 862
    iget p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    goto :goto_0

    .line 864
    :cond_0
    iget p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    :goto_0
    return-void
.end method
