.class public final Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HqmDataDispatcher.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/HqmDataDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HqmDataDispatcher;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/HqmDataDispatcher;Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;-><init>(Lcom/android/server/power/HqmDataDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    invoke-static {p1}, Lcom/android/server/power/HqmDataDispatcher;->-$$Nest$msendBrightnessDuration(Lcom/android/server/power/HqmDataDispatcher;)V

    .line 75
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    invoke-static {p0}, Lcom/android/server/power/HqmDataDispatcher;->-$$Nest$msendCurrentBrightnessSettings(Lcom/android/server/power/HqmDataDispatcher;)V

    return-void
.end method
