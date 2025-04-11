.class public final Lkotlinx/serialization/json/a;
.super Lkotlinx/serialization/json/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 14

    new-instance v13, Lkotlinx/serialization/json/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "    "

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "type"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lkotlinx/serialization/json/i;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZ)V

    sget-object v0, Lkotlinx/serialization/modules/c;->a:Lkotlinx/serialization/modules/b;

    invoke-direct {p0, v13, v0}, Lkotlinx/serialization/json/b;-><init>(Lkotlinx/serialization/json/i;Lkotlinx/serialization/modules/b;)V

    return-void
.end method
