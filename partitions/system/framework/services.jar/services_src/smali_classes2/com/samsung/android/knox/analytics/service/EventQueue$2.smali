.class public Lcom/samsung/android/knox/analytics/service/EventQueue$2;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$2;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$2;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$msaveCachedLogs(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    return-void
.end method
