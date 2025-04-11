.class public Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# instance fields
.field public final mAttributionTag:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput p2, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 312
    iput-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    .line 313
    iput-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mAttributionTag:Ljava/lang/String;

    return-void
.end method
