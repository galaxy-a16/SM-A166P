.class public Lcom/samsung/android/knox/analytics/service/EventQueue$1;
.super Landroid/content/BroadcastReceiver;
.source "EventQueue.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$1;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$1;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$msaveCachedLogs(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    return-void
.end method
