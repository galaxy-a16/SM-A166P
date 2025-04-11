.class public Lcom/android/server/locales/LocaleManagerService$1;
.super Ljava/lang/Object;
.source "LocaleManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;

.field public final synthetic val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/SystemAppUpdateTracker;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$1;->this$0:Lcom/android/server/locales/LocaleManagerService;

    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerService$1;->val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$1;->val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-virtual {p0}, Lcom/android/server/locales/SystemAppUpdateTracker;->init()V

    return-void
.end method
