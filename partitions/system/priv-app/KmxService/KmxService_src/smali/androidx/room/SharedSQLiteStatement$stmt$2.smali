.class final Landroidx/room/SharedSQLiteStatement$stmt$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/f0;


# direct methods
.method public constructor <init>(Landroidx/room/f0;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/SharedSQLiteStatement$stmt$2;->this$0:Landroidx/room/f0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()La1/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement$stmt$2;->this$0:Landroidx/room/f0;

    invoke-static {p0}, Landroidx/room/f0;->access$createNewStatement(Landroidx/room/f0;)La1/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement$stmt$2;->invoke()La1/i;

    move-result-object p0

    return-object p0
.end method
