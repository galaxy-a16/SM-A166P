.class public final Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "PhoneCallStateHandler.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final mTelephonyManagerForSubId:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;


# direct methods
.method public static synthetic $r8$lambda$xVwt8V19QnxoTwOk0owej5-Gjm8(Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->lambda$cleanup$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->mTelephonyManagerForSubId:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private synthetic lambda$cleanup$0()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->mTelephonyManagerForSubId:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    invoke-static {v0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->-$$Nest$fgetmExecutor(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    invoke-static {p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->-$$Nest$mupdateCallStatus(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    return-void
.end method
