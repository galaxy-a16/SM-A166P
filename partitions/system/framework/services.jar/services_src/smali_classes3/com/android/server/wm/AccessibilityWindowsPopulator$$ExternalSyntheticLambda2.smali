.class public final synthetic Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$KeyDumper;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(II)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->$r8$lambda$xjvXZ_ZJIb7SzLNA_vuESZRseoI(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    return-void
.end method
