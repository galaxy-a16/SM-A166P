.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(ILjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;->f$0:I

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;->f$1:Ljava/io/PrintWriter;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$7-GVL-1CRikOBCrh2ArpjhIWBh0(ILjava/io/PrintWriter;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
