// qwaitfence.sip generated by MetaSIP
//
// This file is part of the Qt3DRender Python extension module.
//
// Copyright (c) 2021 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt3D.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


%If (Qt3D_5_13_0 -)

namespace Qt3DRender
{
%TypeHeaderCode
#include <qwaitfence.h>
%End

    class QWaitFence : Qt3DRender::QFrameGraphNode
    {
%TypeHeaderCode
#include <qwaitfence.h>
%End

    public:
        enum HandleType
        {
            NoHandle,
            OpenGLFenceId,
        };

        explicit QWaitFence(Qt3DCore::QNode *parent /TransferThis/ = 0);
        virtual ~QWaitFence();
        void setHandleType(Qt3DRender::QWaitFence::HandleType type);
        void setHandle(QVariant handle);
        Qt3DRender::QWaitFence::HandleType handleType() const;
        QVariant handle() const;
        bool waitOnCPU() const;
        void setWaitOnCPU(bool waitOnCPU);
        quint64 timeout() const;
        void setTimeout(quint64 timeout);

    signals:
        void waitOnCPUChanged(bool waitOnCPU);
        void timeoutChanged(quint64 timeoutChanged);
        void handleTypeChanged(Qt3DRender::QWaitFence::HandleType handleType);
        void handleChanged(QVariant handle);
    };
};

%End
