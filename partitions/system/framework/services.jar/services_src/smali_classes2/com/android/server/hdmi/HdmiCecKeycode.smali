.class public abstract Lcom/android/server/hdmi/HdmiCecKeycode;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# static fields
.field public static final KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;


# direct methods
.method public static constructor <clinit>()V
    .locals 99

    .line 239
    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v0, v1

    const/16 v2, 0x17

    const/4 v15, 0x0

    const/4 v14, 0x0

    invoke-direct {v1, v2, v15, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v1, v2

    const/16 v3, 0x13

    const/4 v13, 0x1

    invoke-direct {v2, v3, v13, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v3, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v2, v3

    const/16 v4, 0x14

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v3, v4

    const/16 v5, 0x15

    const/4 v10, 0x3

    invoke-direct {v4, v5, v10, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v5, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v4, v5

    const/16 v6, 0x16

    const/4 v12, 0x4

    invoke-direct {v5, v6, v12, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v6, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v5, v6

    const/4 v7, 0x5

    const/4 v11, -0x1

    invoke-direct {v6, v11, v7, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v6, v7

    const/4 v8, 0x6

    invoke-direct {v7, v11, v8, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v7, v8

    const/4 v9, 0x7

    invoke-direct {v8, v11, v9, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v16, v8

    const/16 v15, 0x8

    move-object/from16 v9, v16

    invoke-direct {v9, v11, v15, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v9, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v16, v9

    move-object/from16 v95, v0

    const/16 v0, 0x9

    move-object/from16 v11, v16

    invoke-direct {v11, v10, v0, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v11, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v10, v11

    move-object/from16 v96, v1

    const/16 v1, 0x52

    invoke-direct {v11, v1, v0, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v11, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v16, v11

    const/4 v1, -0x1

    const/16 v12, 0xb0

    const/16 v0, 0xa

    move-object/from16 v13, v16

    invoke-direct {v13, v12, v0, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v13, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v15, 0x4

    move-object v12, v13

    const/16 v0, 0x100

    const/16 v15, 0xb

    const/4 v1, 0x0

    invoke-direct {v13, v0, v15, v1, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v73, 0x1

    move-object v13, v0

    const/16 v1, 0xc

    const/4 v15, -0x1

    invoke-direct {v0, v15, v1, v14}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v15, v14

    move-object v14, v0

    const/16 v1, 0xd

    move-object/from16 v97, v2

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object v2, v15

    move-object v15, v0

    move-object/from16 v98, v3

    const/16 v3, 0x6f

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v16, v0

    const/16 v3, 0xe2

    const/16 v1, 0x10

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v17, v0

    const/16 v3, 0x101

    const/16 v1, 0x11

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v18, v0

    const/16 v1, 0xea

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v19, v0

    const/16 v1, 0xe3

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v20, v0

    const/16 v1, 0xe4

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v21, v0

    const/16 v1, 0x20

    const/4 v3, 0x7

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v22, v0

    const/16 v1, 0x21

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v23, v0

    const/16 v1, 0x22

    const/16 v3, 0x9

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v24, v0

    const/16 v1, 0x23

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v25, v0

    const/16 v1, 0x24

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v26, v0

    const/16 v1, 0x25

    const/16 v3, 0xc

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v27, v0

    const/16 v1, 0x26

    const/16 v3, 0xd

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v28, v0

    const/16 v1, 0xe

    const/16 v3, 0x27

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v29, v0

    const/16 v1, 0xf

    const/16 v3, 0x28

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v30, v0

    const/16 v1, 0x29

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v31, v0

    const/16 v1, 0x2a

    const/16 v3, 0x38

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v32, v0

    const/16 v1, 0xa0

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v33, v0

    const/16 v1, 0x1c

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v34, v0

    const/16 v1, 0x2f

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v35, v0

    const/16 v1, 0xa6

    const/16 v3, 0x30

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v36, v0

    const/16 v1, 0xa7

    const/16 v3, 0x31

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v37, v0

    const/16 v1, 0xe5

    const/16 v3, 0x32

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v38, v0

    const/16 v1, 0xde

    const/16 v3, 0x33

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v39, v0

    const/16 v1, 0xb2

    const/16 v3, 0x34

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v40, v0

    const/16 v1, 0xa5

    const/16 v3, 0x35

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v41, v0

    const/16 v1, 0x36

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v42, v0

    const/16 v1, 0x5c

    const/16 v3, 0x37

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v43, v0

    const/16 v1, 0x5d

    const/16 v3, 0x38

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v44, v0

    const/16 v1, 0x1a

    const/16 v3, 0x40

    move-object/from16 v94, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v45, v0

    const/16 v1, 0x18

    const/16 v3, 0x41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v46, v0

    const/16 v1, 0x19

    const/16 v3, 0x42

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v47, v0

    const/16 v1, 0xa4

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v48, v0

    const/16 v1, 0x7e

    const/16 v3, 0x44

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v49, v0

    const/16 v1, 0x45

    const/16 v3, 0x56

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v50, v0

    const/16 v1, 0x7f

    const/16 v4, 0x46

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v51, v0

    const/16 v1, 0x55

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v52, v0

    const/16 v4, 0x82

    const/16 v3, 0x47

    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v53, v0

    const/16 v3, 0x59

    const/16 v4, 0x48

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v54, v0

    const/16 v3, 0x5a

    const/16 v4, 0x49

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v55, v0

    const/16 v3, 0x81

    const/16 v4, 0x4a

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v56, v0

    const/16 v3, 0x4b

    const/16 v4, 0x57

    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v57, v0

    const/16 v3, 0x58

    const/16 v4, 0x4c

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v58, v0

    const/16 v3, 0x4d

    const/4 v4, -0x1

    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v59, v0

    const/16 v3, 0x4e

    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v60, v0

    const/16 v3, 0x4f

    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v61, v0

    const/16 v3, 0x50

    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v62, v0

    const/16 v3, 0xaf

    const/16 v1, 0x51

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v63, v0

    const/16 v1, 0x52

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v64, v0

    const/16 v1, 0xac

    const/16 v3, 0x53

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v65, v0

    const/16 v1, 0x102

    const/16 v3, 0x54

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v66, v0

    const/4 v1, -0x1

    const/16 v3, 0x55

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v67, v0

    const/16 v3, 0x56

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v75, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v68, v75

    const/16 v76, 0xeb

    const/16 v77, 0x56

    const/16 v78, 0x1

    const/16 v0, 0x10

    .line 342
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v79

    const/16 v80, 0x0

    invoke-direct/range {v75 .. v80}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v81, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v69, v81

    const/16 v82, 0xec

    const/16 v83, 0x56

    const/16 v84, 0x1

    const/16 v0, 0x60

    .line 345
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v85

    const/16 v86, 0x0

    invoke-direct/range {v81 .. v86}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v75, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v70, v75

    const/16 v76, 0xee

    const/16 v1, 0x80

    .line 348
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v79

    invoke-direct/range {v75 .. v80}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v81, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v71, v81

    const/16 v82, 0xef

    const/16 v1, 0x90

    .line 351
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v85

    invoke-direct/range {v81 .. v86}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v75, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v72, v75

    const/16 v76, 0xf1

    .line 354
    invoke-static/range {v73 .. v73}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v79

    invoke-direct/range {v75 .. v80}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v73, v1

    const/4 v3, -0x1

    const/16 v4, 0x57

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v74, v1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v75, v0

    const/16 v1, 0x61

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v76, v0

    const/16 v1, 0x62

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v77, v0

    const/16 v1, 0x63

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v78, v0

    const/16 v1, 0x64

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v79, v0

    const/16 v1, 0x65

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v80, v0

    const/16 v1, 0x66

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v81, v0

    const/16 v1, 0x67

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v82, v0

    const/16 v1, 0x68

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v83, v0

    const/16 v1, 0x69

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v84, v0

    const/16 v1, 0x6a

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v85, v0

    const/16 v1, 0x6b

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v86, v0

    const/16 v1, 0x6c

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v87, v0

    const/16 v1, 0x6d

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v88, v0

    const/16 v1, 0xba

    const/16 v3, 0x71

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v89, v0

    const/16 v1, 0xb7

    const/16 v3, 0x72

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v90, v0

    const/16 v1, 0xb8

    const/16 v3, 0x73

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v91, v0

    const/16 v1, 0xb9

    const/16 v3, 0x74

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v92, v0

    const/16 v1, 0x87

    const/16 v3, 0x75

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v93, v0

    const/16 v1, 0xe6

    const/16 v3, 0x76

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    move-object/from16 v4, v94

    move-object/from16 v0, v95

    move-object/from16 v1, v96

    move-object/from16 v2, v97

    move-object/from16 v3, v98

    filled-new-array/range {v0 .. v93}, [Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    return-void
.end method

.method public static androidKeyToCecKey(I)[B
    .locals 3

    const/4 v0, 0x0

    .line 406
    :goto_0
    sget-object v1, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 407
    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$mtoCecKeycodeAndParamIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cecKeycodeAndParamsToAndroidKey([B)I
    .locals 4

    const/4 v0, 0x0

    .line 423
    :goto_0
    sget-object v1, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v2, v1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1

    .line 424
    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$mtoAndroidKeycodeIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;[B)I

    move-result v1

    if-eq v1, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static getKeycodeType(B)Ljava/lang/String;
    .locals 1

    .line 0
    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "Function key"

    return-object p0

    :pswitch_1
    const-string p0, "Power on"

    return-object p0

    :pswitch_2
    const-string p0, "Power off"

    return-object p0

    :pswitch_3
    const-string p0, "Power toggle"

    return-object p0

    :pswitch_4
    const-string p0, "Functional"

    return-object p0

    :pswitch_5
    const-string p0, "Timer"

    return-object p0

    :pswitch_6
    const-string p0, "Media"

    return-object p0

    :pswitch_7
    const-string p0, "Volume mute"

    return-object p0

    :pswitch_8
    const-string p0, "Volume down"

    return-object p0

    :pswitch_9
    const-string p0, "Volume up"

    return-object p0

    :pswitch_a
    const-string p0, "Power"

    return-object p0

    :pswitch_b
    const-string p0, "Channel"

    return-object p0

    :pswitch_c
    const-string p0, "Number"

    return-object p0

    :pswitch_d
    const-string p0, "General"

    return-object p0

    :pswitch_e
    const-string p0, "Navigation"

    return-object p0

    :pswitch_f
    const-string p0, "Select"

    return-object p0

    :cond_0
    :pswitch_10
    const-string p0, "Menu"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x40
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x50
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x60
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x71
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public static getMuteKey(Z)I
    .locals 0

    .line 0
    const/16 p0, 0x43

    return p0
.end method

.method public static intToSingleByteArray(I)[B
    .locals 2

    .line 0
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static isRepeatableKey(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 439
    :goto_0
    sget-object v2, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 440
    aget-object v2, v2, v1

    invoke-static {v2, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$misRepeatableIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isSupportedKeycode(I)Z
    .locals 0

    .line 452
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVolumeKeycode(I)Z
    .locals 2

    .line 460
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 461
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x41

    if-eq v0, p0, :cond_0

    const/16 p0, 0x42

    if-eq v0, p0, :cond_0

    const/16 p0, 0x43

    if-eq v0, p0, :cond_0

    const/16 p0, 0x65

    if-eq v0, p0, :cond_0

    const/16 p0, 0x66

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
