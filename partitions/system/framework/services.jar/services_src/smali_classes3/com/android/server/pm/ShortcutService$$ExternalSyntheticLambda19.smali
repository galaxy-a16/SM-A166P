.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->$r8$lambda$-uCkVnUG-NcUCOMR5zFZoSK_IOU(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
