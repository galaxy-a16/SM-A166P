.class public final synthetic Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$ValueDumper;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda4;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda4;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Landroid/window/WindowInfosListener$DisplayInfo;

    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->$r8$lambda$rWmPNy0y14HGMfI4NywOoZI4WZo(Ljava/io/PrintWriter;Landroid/window/WindowInfosListener$DisplayInfo;)V

    return-void
.end method
