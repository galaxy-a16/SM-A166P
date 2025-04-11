.class public Lcom/android/server/desktopmode/WirelessDexManager$2;
.super Ljava/lang/Object;
.source "WirelessDexManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$2;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerIconChanged(ILandroid/graphics/Bitmap;FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$2;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$msetWirelessDeXPointerIcon(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    return-void
.end method
