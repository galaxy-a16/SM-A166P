.class public Lcom/android/server/media/CustomSessionPolicyProvider;
.super Lcom/android/server/media/MediaSessionPolicyProvider;
.source "CustomSessionPolicyProvider.java"


# instance fields
.field private final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionPolicyProvider;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/CustomSessionPolicyProvider;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    return-void
.end method


# virtual methods
.method public getSessionPoliciesForApplication(ILjava/lang/String;)I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/server/media/CustomSessionPolicyProvider;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v1, "media_button_deny"

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/media/MediaSessionPolicyProvider;->getSessionPoliciesForApplication(ILjava/lang/String;)I

    move-result p0

    return p0
.end method
