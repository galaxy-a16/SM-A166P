.class public Lcom/android/server/audio/SoundEffectsHelper$1;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fputmSoundPoolLoader(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;)V

    if-nez p1, :cond_0

    const-string p1, "AS.SfxHelper"

    const-string/jumbo v0, "onLoadSoundEffects(), Error while loading samples"

    .line 225
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    :cond_0
    return-void
.end method
