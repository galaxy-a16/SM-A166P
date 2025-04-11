.class public final Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;
.super Ljava/lang/Object;
.source "LetterboxConfigurationDeviceConfig.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field static final sKeyToDefaultValueMap:Ljava/util/Map;


# instance fields
.field public final mActiveDeviceConfigsSet:Landroid/util/ArraySet;

.field public mIsAllowIgnoreOrientationRequest:Z

.field public mIsCameraCompatTreatmentEnabled:Z

.field public mIsCompatFakeFocusAllowed:Z

.field public mIsDisplayRotationImmersiveAppCompatPolicyEnabled:Z

.field public mIsTranslucentLetterboxingAllowed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "enable_compat_camera_treatment"

    .line 58
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "enable_display_rotation_immersive_app_compat_policy"

    const-string v4, "allow_ignore_orientation_request"

    const-string v6, "enable_compat_fake_focus"

    const-string v8, "enable_letterbox_translucent_activity"

    move-object v1, v9

    move-object v3, v9

    move-object v5, v9

    move-object v7, v9

    .line 56
    invoke-static/range {v0 .. v9}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->sKeyToDefaultValueMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsCameraCompatTreatmentEnabled:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsDisplayRotationImmersiveAppCompatPolicyEnabled:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsAllowIgnoreOrientationRequest:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsCompatFakeFocusAllowed:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsTranslucentLetterboxingAllowed:Z

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mActiveDeviceConfigsSet:Landroid/util/ArraySet;

    const-string/jumbo v0, "window_manager"

    .line 100
    invoke-static {v0, p1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public final getDeviceConfig(Ljava/lang/String;Z)Z
    .locals 0

    const-string/jumbo p0, "window_manager"

    .line 177
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFlag(Ljava/lang/String;)Z
    .locals 2

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "enable_compat_camera_treatment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "allow_ignore_orientation_request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "enable_letterbox_translucent_activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "enable_compat_fake_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 145
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected flag name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 135
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsCameraCompatTreatmentEnabled:Z

    return p0

    .line 139
    :pswitch_1
    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsAllowIgnoreOrientationRequest:Z

    return p0

    .line 143
    :pswitch_2
    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsTranslucentLetterboxingAllowed:Z

    return p0

    .line 137
    :pswitch_3
    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsDisplayRotationImmersiveAppCompatPolicyEnabled:Z

    return p0

    .line 141
    :pswitch_4
    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsCompatFakeFocusAllowed:Z

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72bdf371 -> :sswitch_4
        -0x6a67b43b -> :sswitch_3
        0x6a2df8b -> :sswitch_2
        0x2bd2fbe9 -> :sswitch_1
        0x57b7403f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mActiveDeviceConfigsSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mActiveDeviceConfigsSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->readAndSaveValueFromDeviceConfig(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final readAndSaveValueFromDeviceConfig(Ljava/lang/String;)V
    .locals 3

    .line 150
    sget-object v0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->sKeyToDefaultValueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "enable_compat_camera_treatment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "allow_ignore_orientation_request"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "enable_letterbox_translucent_activity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "enable_compat_fake_focus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 172
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected flag name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 156
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getDeviceConfig(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsCameraCompatTreatmentEnabled:Z

    goto :goto_1

    .line 163
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getDeviceConfig(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsAllowIgnoreOrientationRequest:Z

    goto :goto_1

    .line 169
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getDeviceConfig(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsTranslucentLetterboxingAllowed:Z

    goto :goto_1

    .line 160
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getDeviceConfig(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsDisplayRotationImmersiveAppCompatPolicyEnabled:Z

    goto :goto_1

    .line 166
    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getDeviceConfig(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mIsCompatFakeFocusAllowed:Z

    :goto_1
    return-void

    .line 152
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Haven\'t found default value for flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x72bdf371 -> :sswitch_4
        -0x6a67b43b -> :sswitch_3
        0x6a2df8b -> :sswitch_2
        0x2bd2fbe9 -> :sswitch_1
        0x57b7403f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateFlagActiveStatus(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->mActiveDeviceConfigsSet:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->readAndSaveValueFromDeviceConfig(Ljava/lang/String;)V

    return-void
.end method
