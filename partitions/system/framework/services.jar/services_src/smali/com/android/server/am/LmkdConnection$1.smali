.class public Lcom/android/server/am/LmkdConnection$1;
.super Ljava/lang/Object;
.source "LmkdConnection.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/LmkdConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LmkdConnection;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection$1;->this$0:Lcom/android/server/am/LmkdConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection$1;->this$0:Lcom/android/server/am/LmkdConnection;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/LmkdConnection;->-$$Nest$mfileDescriptorEventHandler(Lcom/android/server/am/LmkdConnection;Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method
